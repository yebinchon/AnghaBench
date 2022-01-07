
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rctl_get_rules_args {int dummy; } ;


 int ENOSYS ;

int
sys_rctl_get_rules(struct thread *td, struct rctl_get_rules_args *uap)
{

 return (ENOSYS);
}
