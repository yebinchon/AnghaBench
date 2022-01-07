
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioperm_args {int enable; int length; int start; } ;
struct i386_ioperm_args {int enable; int length; int start; } ;


 int i386_set_ioperm (struct thread*,struct i386_ioperm_args*) ;

int
linux_ioperm(struct thread *td, struct linux_ioperm_args *args)
{
 int error;
 struct i386_ioperm_args iia;

 iia.start = args->start;
 iia.length = args->length;
 iia.enable = args->enable;
 error = i386_set_ioperm(td, &iia);
 return (error);
}
