
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mq_open_args {int dummy; } ;
struct kmq_open_args {int dummy; } ;


 int ENOSYS ;
 int sys_kmq_open (struct thread*,struct kmq_open_args*) ;

int
linux_mq_open(struct thread *td, struct linux_mq_open_args *args)
{



 return (ENOSYS);

}
