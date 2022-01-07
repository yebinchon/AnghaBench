
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int kern_syscall_module_handler (int ,struct module*,int,void*) ;
 int sysent ;

int
syscall_module_handler(struct module *mod, int what, void *arg)
{

 return (kern_syscall_module_handler(sysent, mod, what, arg));
}
