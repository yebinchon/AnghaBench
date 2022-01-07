
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int td_proc; } ;
typedef scalar_t__ sockaddr ;
struct osockaddr {int sa_family; } ;
struct getpeername_args {int alen; int asa; int fdes; } ;
typedef scalar_t__ socklen_t ;
typedef int len ;


 int M_SONAME ;
 int SV_AOUT ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int copyin (int ,scalar_t__*,int) ;
 int copyout (scalar_t__*,int ,int) ;
 int free (scalar_t__*,int ) ;
 int kern_getpeername (struct thread*,int ,scalar_t__**,scalar_t__*) ;

__attribute__((used)) static int
getpeername1(struct thread *td, struct getpeername_args *uap, int compat)
{
 struct sockaddr *sa;
 socklen_t len;
 int error;

 error = copyin(uap->alen, &len, sizeof (len));
 if (error != 0)
  return (error);

 error = kern_getpeername(td, uap->fdes, &sa, &len);
 if (error != 0)
  return (error);

 if (len != 0) {




  error = copyout(sa, uap->asa, (u_int)len);
 }
 free(sa, M_SONAME);
 if (error == 0)
  error = copyout(&len, uap->alen, sizeof(len));
 return (error);
}
