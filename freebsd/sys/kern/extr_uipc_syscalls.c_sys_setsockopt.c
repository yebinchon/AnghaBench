
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct setsockopt_args {int valsize; int val; int name; int level; int s; } ;


 int UIO_USERSPACE ;
 int kern_setsockopt (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
sys_setsockopt(struct thread *td, struct setsockopt_args *uap)
{

 return (kern_setsockopt(td, uap->s, uap->level, uap->name,
     uap->val, UIO_USERSPACE, uap->valsize));
}
