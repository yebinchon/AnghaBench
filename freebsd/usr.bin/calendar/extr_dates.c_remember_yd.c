
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_year {int year; struct cal_month* months; struct cal_year* nextyear; } ;
struct cal_month {int month; struct cal_month* nextmonth; struct cal_day* days; } ;
struct cal_day {int julianday; int dayofmonth; struct cal_day* nextday; } ;


 scalar_t__ debug_remember ;
 struct cal_year* hyear ;
 int printf (char*,int,int) ;

int
remember_yd(int yy, int dd, int *rm, int *rd)
{
 struct cal_year *y;
 struct cal_month *m;
 struct cal_day *d;

 if (debug_remember)
  printf("remember_yd: %d - %d\n", yy, dd);

 y = hyear;
 while (y != ((void*)0)) {
  if (y->year != yy) {
   y = y->nextyear;
   continue;
  }
  m = y->months;
  while (m != ((void*)0)) {
   d = m->days;
   while (d != ((void*)0)) {
    if (d->julianday == dd) {
     *rm = m->month;
     *rd = d->dayofmonth;
     return (1);
    }
    d = d->nextday;
   }
   m = m->nextmonth;
  }
  return (0);
 }
 return (0);
}
