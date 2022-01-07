
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct getrandom_args {int flags; int buflen; int buf; } ;


 int kern_getrandom (struct thread*,int ,int ,int ) ;

int
sys_getrandom(struct thread *td, struct getrandom_args *uap)
{
 return (kern_getrandom(td, uap->buf, uap->buflen, uap->flags));
}
