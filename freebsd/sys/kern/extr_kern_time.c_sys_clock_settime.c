
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct clock_settime_args {int clock_id; int tp; } ;
typedef int ats ;


 int copyin (int ,struct timespec*,int) ;
 int kern_clock_settime (struct thread*,int ,struct timespec*) ;

int
sys_clock_settime(struct thread *td, struct clock_settime_args *uap)
{
 struct timespec ats;
 int error;

 if ((error = copyin(uap->tp, &ats, sizeof(ats))) != 0)
  return (error);
 return (kern_clock_settime(td, uap->clock_id, &ats));
}
