
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct dup_args {scalar_t__ fd; } ;


 int FDDUP_NORMAL ;
 int kern_dup (struct thread*,int ,int ,int,int ) ;

int
sys_dup(struct thread *td, struct dup_args *uap)
{

 return (kern_dup(td, FDDUP_NORMAL, 0, (int)uap->fd, 0));
}
