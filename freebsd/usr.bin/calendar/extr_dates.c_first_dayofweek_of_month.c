
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_year {int year; struct cal_month* months; struct cal_year* nextyear; } ;
struct cal_month {int month; int firstdayofweek; struct cal_month* nextmonth; } ;


 struct cal_year* hyear ;

int
first_dayofweek_of_month(int yy, int mm)
{
 struct cal_year *y;
 struct cal_month *m;

 y = hyear;
 while (y != ((void*)0)) {
  if (y->year != yy) {
   y = y->nextyear;
   continue;
  }
  m = y->months;
  while (m != ((void*)0)) {
   if (m->month == mm)
    return (m->firstdayofweek);
   m = m->nextmonth;
  }

  return (-1);
 }


        return (-1);
}
