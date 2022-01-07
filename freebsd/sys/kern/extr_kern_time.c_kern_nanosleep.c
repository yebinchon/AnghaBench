
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;


 int CLOCK_REALTIME ;
 int TIMER_RELTIME ;
 int kern_clock_nanosleep (struct thread*,int ,int ,struct timespec*,struct timespec*) ;

int
kern_nanosleep(struct thread *td, struct timespec *rqt, struct timespec *rmt)
{

 return (kern_clock_nanosleep(td, CLOCK_REALTIME, TIMER_RELTIME, rqt,
     rmt));
}
