
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rctl_add_rule_args {int dummy; } ;


 int ENOSYS ;

int
sys_rctl_add_rule(struct thread *td, struct rctl_add_rule_args *uap)
{

 return (ENOSYS);
}
