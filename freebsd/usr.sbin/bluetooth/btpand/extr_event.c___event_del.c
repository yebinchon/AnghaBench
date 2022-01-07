
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int flags; } ;


 int EV_CURRENT ;
 int EV_PENDING ;
 int TAILQ_REMOVE (int *,struct event*,int ) ;
 int assert (int) ;
 int next ;
 int pending ;

int
__event_del(struct event *ev)
{
 assert((ev->flags & EV_CURRENT) == 0);

 if ((ev->flags & EV_PENDING) != 0) {
  TAILQ_REMOVE(&pending, ev, next);
  ev->flags &= ~EV_PENDING;
 }

 return (0);
}
