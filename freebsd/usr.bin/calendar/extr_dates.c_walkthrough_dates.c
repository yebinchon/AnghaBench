
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
struct cal_year {struct cal_month* months; struct cal_year* nextyear; } ;
struct cal_month {struct cal_day* days; struct cal_month* nextmonth; } ;
struct cal_day {struct event* events; struct cal_day* nextday; } ;


 struct cal_year* hyear ;

int
walkthrough_dates(struct event **e)
{
 static struct cal_year *y = ((void*)0);
 static struct cal_month *m = ((void*)0);
 static struct cal_day *d = ((void*)0);

 if (y == ((void*)0)) {
  y = hyear;
  m = y->months;
  d = m->days;
  *e = d->events;
  return (1);
 }
 if (d->nextday != ((void*)0)) {
  d = d->nextday;
  *e = d->events;
  return (1);
 }
 if (m->nextmonth != ((void*)0)) {
  m = m->nextmonth;
  d = m->days;
  *e = d->events;
  return (1);
 }
 if (y->nextyear != ((void*)0)) {
  y = y->nextyear;
  m = y->months;
  d = m->days;
  *e = d->events;
  return (1);
 }

 return (0);
}
