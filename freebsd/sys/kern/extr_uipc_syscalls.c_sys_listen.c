
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct listen_args {int backlog; int s; } ;


 int kern_listen (struct thread*,int ,int ) ;

int
sys_listen(struct thread *td, struct listen_args *uap)
{

 return (kern_listen(td, uap->s, uap->backlog));
}
