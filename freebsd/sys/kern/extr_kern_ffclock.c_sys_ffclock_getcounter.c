
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ffclock_getcounter_args {int dummy; } ;


 int ENOSYS ;

int
sys_ffclock_getcounter(struct thread *td, struct ffclock_getcounter_args *uap)
{

 return (ENOSYS);
}
