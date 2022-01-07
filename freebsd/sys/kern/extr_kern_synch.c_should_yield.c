
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ td_swvoltick; } ;


 TYPE_1__* curthread ;
 scalar_t__ hogticks ;
 scalar_t__ ticks ;

int
should_yield(void)
{

 return ((u_int)ticks - (u_int)curthread->td_swvoltick >= hogticks);
}
