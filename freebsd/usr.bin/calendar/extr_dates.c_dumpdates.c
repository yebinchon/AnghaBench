
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_year {int year; int firstdayofweek; struct cal_year* nextyear; struct cal_month* months; } ;
struct cal_month {int month; int firstdayjulian; int firstdayofweek; struct cal_month* nextmonth; struct cal_day* days; } ;
struct cal_day {int dayofmonth; int julianday; int dayofweek; struct cal_day* nextday; } ;


 struct cal_year* hyear ;
 int printf (char*,int,int,...) ;

void
dumpdates(void)
{
 struct cal_year *y;
 struct cal_month *m;
 struct cal_day *d;

 y = hyear;
 while (y != ((void*)0)) {
  printf("%-5d (wday:%d)\n", y->year, y->firstdayofweek);
  m = y->months;
  while (m != ((void*)0)) {
   printf("-- %-5d (julian:%d, dow:%d)\n", m->month,
       m->firstdayjulian, m->firstdayofweek);
   d = m->days;
   while (d != ((void*)0)) {
    printf("  -- %-5d (julian:%d, dow:%d)\n",
        d->dayofmonth, d->julianday, d->dayofweek);
    d = d->nextday;
   }
   m = m->nextmonth;
  }
  y = y->nextyear;
 }
}
