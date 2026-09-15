use sales;
select * from sales_data111;

# اجمالي المبيعات والكميه

select sum(`Sales_Amount`)as total_amount,
sum(`Quantity_Sold`)as total_quantity
 from sales_data111;

 #_________________________________________________________________

 # المبيعات حسب فئه المنتجات
 select `Product_Category`,
 sum(`Sales_Amount`)as total_amount
  from sales_data111
  GROUP BY `Product_Category`
  ORDER BY total_amount desc;

  #__________________________________________________________________

  #اكثر المنتجات مبيعا بالكميه 

  select `ï»¿Product_ID`, sum(`Quantity_Sold`)as total_quantity from sales_data111
GROUP BY `ï»¿Product_ID`
ORDER BY total_quantity desc;

__________________________________________________________________

#المبيعات حسب المنطقه

select `Region`,
sum(`Sales_Amount`)as total_amount
 from sales_data111
 GROUP BY Region
 order by total_amount desc;

__________________________________________________________________

#sales repاداء ال 

select `Sales_Rep`,
sum(`Sales_Amount`)as total_amount
 from sales_data111
group by `Sales_Rep`
ORDER BY total_amount DESC
limit 10;

__________________________________________________________________

#متوسط قيمه عمليه البيع

select avg(`Sales_Amount`)as avg_sales_amount from sales_data111;

__________________________________________________________________

#الايرادات حسب طريقه الدفع

select `Payment_Method`,
sum(`Sales_Amount`)as total_amount
 from sales_data111
 GROUP BY `Payment_Method`
 ORDER BY total_amount desc;

 __________________________________________________________________

 #sales channelالمبيعات حسب ال 
 
 select `Sales_Channel`,
 sum(`Sales_Amount`)as total_amount
  from sales_data111
  GROUP BY `Sales_Channel`
  ORDER BY total_amount desc;

  __________________________________________________________________

  #تاثير الخصم علي المببعات

  select `Discount`,
 sum(`Sales_Amount`)as total_amount,
 count(*)as transactionns
FROM sales_data111
GROUP BY `Discount`
ORDER BY `Discount`;

__________________________________________________________________

#الربح التقريبي

select 
sum((`Unit_Price`-`Unit_Cost`)*`Quantity_Sold`)
as total_profit
 from sales_data111;

__________________________________________________________________

# الربح حسب فئه المنتج

select `Product_Category`,
sum((`Unit_Price`-`Unit_Cost`)*`Quantity_Sold`)
as total_profit
 from sales_data111
 GROUP BY `Product_Category`
 ORDER BY total_profit desc;

 __________________________________________________________________

 #region+sales rep افضل

 select `Region`,
 `Sales_Rep`,
 sum(`Sales_Amount`)as total_sales
  from sales_data111
GROUP BY `Region`, `Sales_Rep`
ORDER BY total_sales desc;


____________________________________________________________________________________________________________________