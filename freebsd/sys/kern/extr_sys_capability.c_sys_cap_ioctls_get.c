
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cap_ioctls_get_args {int dummy; } ;


 int ENOSYS ;

int
sys_cap_ioctls_get(struct thread *td, struct cap_ioctls_get_args *uap)
{

 return (ENOSYS);
}
