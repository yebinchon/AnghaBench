
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct __mac_set_proc_args {int dummy; } ;


 int ENOSYS ;

int
sys___mac_set_proc(struct thread *td, struct __mac_set_proc_args *uap)
{

 return (ENOSYS);
}
