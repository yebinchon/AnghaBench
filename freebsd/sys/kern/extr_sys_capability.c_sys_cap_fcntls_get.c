
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cap_fcntls_get_args {int dummy; } ;


 int ENOSYS ;

int
sys_cap_fcntls_get(struct thread *td, struct cap_fcntls_get_args *uap)
{

 return (ENOSYS);
}
