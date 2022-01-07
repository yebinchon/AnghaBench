
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getaudit_args {int dummy; } ;


 int ENOSYS ;

int
sys_getaudit(struct thread *td, struct getaudit_args *uap)
{

 return (ENOSYS);
}
