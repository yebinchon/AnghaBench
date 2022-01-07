
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shutdown_args {int how; int s; } ;


 int kern_shutdown (struct thread*,int ,int ) ;

int
sys_shutdown(struct thread *td, struct shutdown_args *uap)
{

 return (kern_shutdown(td, uap->s, uap->how));
}
