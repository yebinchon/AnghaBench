
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct bindat_args {int s; int fd; int namelen; int name; } ;


 int M_SONAME ;
 int free (struct sockaddr*,int ) ;
 int getsockaddr (struct sockaddr**,int ,int ) ;
 int kern_bindat (struct thread*,int ,int ,struct sockaddr*) ;

int
sys_bindat(struct thread *td, struct bindat_args *uap)
{
 struct sockaddr *sa;
 int error;

 error = getsockaddr(&sa, uap->name, uap->namelen);
 if (error == 0) {
  error = kern_bindat(td, uap->fd, uap->s, sa);
  free(sa, M_SONAME);
 }
 return (error);
}
