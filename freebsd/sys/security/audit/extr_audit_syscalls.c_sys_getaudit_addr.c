
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getaudit_addr_args {int dummy; } ;


 int ENOSYS ;

int
sys_getaudit_addr(struct thread *td, struct getaudit_addr_args *uap)
{

 return (ENOSYS);
}
