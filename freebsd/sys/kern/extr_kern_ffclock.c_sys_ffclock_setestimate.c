
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ffclock_setestimate_args {int dummy; } ;


 int ENOSYS ;

int
sys_ffclock_setestimate(struct thread *td, struct ffclock_setestimate_args *uap)
{

 return (ENOSYS);
}
