
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket_args {int protocol; int type; int domain; } ;


 int kern_socket (struct thread*,int ,int ,int ) ;

int
sys_socket(struct thread *td, struct socket_args *uap)
{

 return (kern_socket(td, uap->domain, uap->type, uap->protocol));
}
