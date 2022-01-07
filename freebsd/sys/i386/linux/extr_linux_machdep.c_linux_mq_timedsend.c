
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mq_timedsend_args {int dummy; } ;
struct kmq_timedsend_args {int dummy; } ;


 int ENOSYS ;
 int sys_kmq_timedsend (struct thread*,struct kmq_timedsend_args*) ;

int
linux_mq_timedsend(struct thread *td, struct linux_mq_timedsend_args *args)
{



 return (ENOSYS);

}
