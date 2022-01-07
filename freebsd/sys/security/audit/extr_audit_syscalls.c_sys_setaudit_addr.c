
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct setaudit_addr_args {int dummy; } ;


 int ENOSYS ;

int
sys_setaudit_addr(struct thread *td, struct setaudit_addr_args *uap)
{

 return (ENOSYS);
}
