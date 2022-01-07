
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct __cap_rights_get_args {int dummy; } ;


 int ENOSYS ;

int
sys___cap_rights_get(struct thread *td, struct __cap_rights_get_args *uap)
{

 return (ENOSYS);
}
