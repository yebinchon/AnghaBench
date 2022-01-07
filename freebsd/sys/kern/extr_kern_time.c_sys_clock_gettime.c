
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct clock_gettime_args {int tp; int clock_id; } ;
typedef int ats ;


 int copyout (struct timespec*,int ,int) ;
 int kern_clock_gettime (struct thread*,int ,struct timespec*) ;

int
sys_clock_gettime(struct thread *td, struct clock_gettime_args *uap)
{
 struct timespec ats;
 int error;

 error = kern_clock_gettime(td, uap->clock_id, &ats);
 if (error == 0)
  error = copyout(&ats, uap->tp, sizeof(ats));

 return (error);
}
