
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connectat_args {int s; int fd; int namelen; int name; } ;


 int M_SONAME ;
 int free (struct sockaddr*,int ) ;
 int getsockaddr (struct sockaddr**,int ,int ) ;
 int kern_connectat (struct thread*,int ,int ,struct sockaddr*) ;

int
sys_connectat(struct thread *td, struct connectat_args *uap)
{
 struct sockaddr *sa;
 int error;

 error = getsockaddr(&sa, uap->name, uap->namelen);
 if (error == 0) {
  error = kern_connectat(td, uap->fd, uap->s, sa);
  free(sa, M_SONAME);
 }
 return (error);
}
