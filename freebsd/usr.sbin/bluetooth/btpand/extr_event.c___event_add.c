
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event {int flags; struct timeval timeout; int expire; } ;


 int EV_CURRENT ;
 int EV_HAS_TIMEOUT ;
 int EV_PENDING ;
 int __event_link (struct event*) ;
 int assert (int) ;
 int gettimeofday (int *,int *) ;
 int tv_add (int *,struct timeval const*) ;

int
__event_add(struct event *ev, const struct timeval *timeout)
{
 assert((ev->flags & (EV_PENDING|EV_CURRENT)) == 0);

 if (timeout != ((void*)0)) {
  gettimeofday(&ev->expire, ((void*)0));
  tv_add(&ev->expire, timeout);
  ev->timeout = *timeout;
  ev->flags |= EV_HAS_TIMEOUT;
 } else
  ev->flags &= ~EV_HAS_TIMEOUT;

 __event_link(ev);

 return (0);
}
