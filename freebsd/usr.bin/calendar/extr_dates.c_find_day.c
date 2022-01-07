
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_year {int year; struct cal_month* months; struct cal_year* nextyear; } ;
struct cal_month {int month; struct cal_day* days; struct cal_month* nextmonth; } ;
struct cal_day {int dayofmonth; struct cal_day* nextday; } ;


 scalar_t__ debug_remember ;
 struct cal_year* hyear ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static struct cal_day *
find_day(int yy, int mm, int dd)
{
 struct cal_year *y;
 struct cal_month *m;
 struct cal_day *d;

 if (debug_remember)
  printf("remember_ymd: %d - %d - %d\n", yy, mm, dd);

 y = hyear;
 while (y != ((void*)0)) {
  if (y->year != yy) {
   y = y->nextyear;
   continue;
  }
  m = y->months;
  while (m != ((void*)0)) {
   if (m->month != mm) {
    m = m->nextmonth;
    continue;
   }
   d = m->days;
   while (d != ((void*)0)) {
    if (d->dayofmonth == dd)
     return (d);
    d = d->nextday;
    continue;
   }
   return (((void*)0));
  }
  return (((void*)0));
 }
 return (((void*)0));
}
