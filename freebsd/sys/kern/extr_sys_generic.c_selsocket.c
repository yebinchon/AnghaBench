
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct thread {int dummy; } ;
struct socket {int dummy; } ;
typedef int sbintime_t ;


 int EINVAL ;
 int ERESTART ;
 scalar_t__ INT32_MAX ;
 int SBT_MAX ;
 scalar_t__ TIMESEL (int*,int) ;
 int selfdalloc (struct thread*,int *) ;
 int seltdclear (struct thread*) ;
 int seltdinit (struct thread*) ;
 int seltdwait (struct thread*,int,int) ;
 int sopoll (struct socket*,int,int *,struct thread*) ;
 int tc_precexp ;
 scalar_t__ tc_tick_sbt ;
 int timevalisset (struct timeval*) ;
 int tvtosbt (struct timeval) ;

int
selsocket(struct socket *so, int events, struct timeval *tvp, struct thread *td)
{
 struct timeval rtv;
 sbintime_t asbt, precision, rsbt;
 int error;

 precision = 0;
 if (tvp != ((void*)0)) {
  rtv = *tvp;
  if (rtv.tv_sec < 0 || rtv.tv_usec < 0 ||
      rtv.tv_usec >= 1000000)
   return (EINVAL);
  if (!timevalisset(&rtv))
   asbt = 0;
  else if (rtv.tv_sec <= INT32_MAX) {
   rsbt = tvtosbt(rtv);
   precision = rsbt;
   precision >>= tc_precexp;
   if (TIMESEL(&asbt, rsbt))
    asbt += tc_tick_sbt;
   if (asbt <= SBT_MAX - rsbt)
    asbt += rsbt;
   else
    asbt = -1;
  } else
   asbt = -1;
 } else
  asbt = -1;
 seltdinit(td);



 for (;;) {
  selfdalloc(td, ((void*)0));
  error = sopoll(so, events, ((void*)0), td);

  if (error)
   return (0);
  error = seltdwait(td, asbt, precision);
  if (error)
   break;
 }
 seltdclear(td);

 if (error == ERESTART)
  error = 0;
 return (error);
}
