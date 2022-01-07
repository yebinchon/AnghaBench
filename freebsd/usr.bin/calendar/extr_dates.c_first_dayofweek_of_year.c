
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_year {int year; int firstdayofweek; struct cal_year* nextyear; } ;


 struct cal_year* hyear ;

int
first_dayofweek_of_year(int yy)
{
 struct cal_year *y;

 y = hyear;
 while (y != ((void*)0)) {
  if (y->year == yy)
   return (y->firstdayofweek);
  y = y->nextyear;
 }


 return (-1);
}
