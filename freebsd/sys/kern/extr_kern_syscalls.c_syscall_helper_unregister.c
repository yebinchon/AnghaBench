
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_helper_data {int dummy; } ;


 int kern_syscall_helper_unregister (int ,struct syscall_helper_data*) ;
 int sysent ;

int
syscall_helper_unregister(struct syscall_helper_data *sd)
{

 return (kern_syscall_helper_unregister(sysent, sd));
}
