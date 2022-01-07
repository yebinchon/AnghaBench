
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_mq_unlink_args {int dummy; } ;
struct kmq_unlink_args {int dummy; } ;


 int ENOSYS ;
 int sys_kmq_unlink (struct thread*,struct kmq_unlink_args*) ;

int
linux_mq_unlink(struct thread *td, struct linux_mq_unlink_args *args)
{



 return (ENOSYS);

}
