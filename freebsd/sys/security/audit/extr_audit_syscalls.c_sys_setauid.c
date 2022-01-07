
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct setauid_args {int dummy; } ;


 int ENOSYS ;

int
sys_setauid(struct thread *td, struct setauid_args *uap)
{

 return (ENOSYS);
}
