
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int flags; } ;


 int EV_CURRENT ;
 int EV_PENDING ;
 int TAILQ_INSERT_TAIL (int *,struct event*,int ) ;
 int assert (int) ;
 int current ;
 int next ;

__attribute__((used)) static void
__event_add_current(struct event *ev)
{
 assert((ev->flags & (EV_PENDING|EV_CURRENT)) == 0);

 TAILQ_INSERT_TAIL(&current, ev, next);
 ev->flags |= EV_CURRENT;
}
