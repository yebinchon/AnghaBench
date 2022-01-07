
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct clock_nanosleep_args {int rmtp; int rqtp; int flags; int clock_id; } ;


 int kern_posix_error (struct thread*,int) ;
 int user_clock_nanosleep (struct thread*,int ,int ,int ,int ) ;

int
sys_clock_nanosleep(struct thread *td, struct clock_nanosleep_args *uap)
{
 int error;

 error = user_clock_nanosleep(td, uap->clock_id, uap->flags, uap->rqtp,
     uap->rmtp);
 return (kern_posix_error(td, error));
}
