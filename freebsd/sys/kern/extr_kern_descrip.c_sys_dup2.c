
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct dup2_args {scalar_t__ to; scalar_t__ from; } ;


 int FDDUP_FIXED ;
 int kern_dup (struct thread*,int ,int ,int,int) ;

int
sys_dup2(struct thread *td, struct dup2_args *uap)
{

 return (kern_dup(td, FDDUP_FIXED, 0, (int)uap->from, (int)uap->to));
}
