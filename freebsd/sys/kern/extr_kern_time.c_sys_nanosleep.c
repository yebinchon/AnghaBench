
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nanosleep_args {int rmtp; int rqtp; } ;


 int CLOCK_REALTIME ;
 int TIMER_RELTIME ;
 int user_clock_nanosleep (struct thread*,int ,int ,int ,int ) ;

int
sys_nanosleep(struct thread *td, struct nanosleep_args *uap)
{

 return (user_clock_nanosleep(td, CLOCK_REALTIME, TIMER_RELTIME,
     uap->rqtp, uap->rmtp));
}
