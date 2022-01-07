
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {struct event* next; } ;
struct cal_day {struct event* events; } ;


 struct cal_day* find_day (int,int,int) ;

void
addtodate(struct event *e, int year, int month, int day)
{
 struct cal_day *d;

 d = find_day(year, month, day);
 e->next = d->events;
 d->events = e;
}
