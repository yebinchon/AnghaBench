
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct auditon_args {int dummy; } ;


 int ENOSYS ;

int
sys_auditon(struct thread *td, struct auditon_args *uap)
{

 return (ENOSYS);
}
