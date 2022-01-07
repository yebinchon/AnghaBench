
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct auditctl_args {int dummy; } ;


 int ENOSYS ;

int
sys_auditctl(struct thread *td, struct auditctl_args *uap)
{

 return (ENOSYS);
}
