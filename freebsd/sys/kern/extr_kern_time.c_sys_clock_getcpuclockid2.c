
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct clock_getcpuclockid2_args {int clock_id; int which; int id; } ;
typedef int clockid_t ;


 int copyout (int *,int ,int) ;
 int kern_clock_getcpuclockid2 (struct thread*,int ,int ,int *) ;

int
sys_clock_getcpuclockid2(struct thread *td, struct clock_getcpuclockid2_args *uap)
{
 clockid_t clk_id;
 int error;

 error = kern_clock_getcpuclockid2(td, uap->id, uap->which, &clk_id);
 if (error == 0)
  error = copyout(&clk_id, uap->clock_id, sizeof(clockid_t));
 return (error);
}
