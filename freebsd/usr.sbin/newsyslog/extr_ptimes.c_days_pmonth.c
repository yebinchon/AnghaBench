
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
days_pmonth(int month, int year)
{
 static const int mtab[] = {31, 28, 31, 30, 31, 30, 31, 31,
     30, 31, 30, 31};
 int ndays;

 ndays = mtab[month];

 if (month == 1) {




  if (year < 1900)
   year += 1900;
  if (year % 4 == 0) {





   if (year % 100 != 0)
    ndays++;
   else if (year % 400 == 0)
    ndays++;
  }
 }
 return (ndays);
}
