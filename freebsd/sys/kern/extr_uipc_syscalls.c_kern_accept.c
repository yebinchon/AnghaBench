
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct file {int dummy; } ;
typedef int socklen_t ;


 int ACCEPT4_INHERIT ;
 int kern_accept4 (struct thread*,int,struct sockaddr**,int *,int ,struct file**) ;

int
kern_accept(struct thread *td, int s, struct sockaddr **name,
    socklen_t *namelen, struct file **fp)
{
 return (kern_accept4(td, s, name, namelen, ACCEPT4_INHERIT, fp));
}
