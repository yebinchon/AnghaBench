
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mac_syscall_args {int dummy; } ;


 int ENOSYS ;

int
sys_mac_syscall(struct thread *td, struct mac_syscall_args *uap)
{

 return (ENOSYS);
}
