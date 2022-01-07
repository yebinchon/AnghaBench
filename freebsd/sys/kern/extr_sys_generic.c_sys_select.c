
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {int dummy; } ;
struct thread {int dummy; } ;
struct select_args {int ex; int ou; int in; int nd; int * tv; } ;


 int NFDBITS ;
 int copyin (int *,struct timeval*,int) ;
 int kern_select (struct thread*,int ,int ,int ,int ,struct timeval*,int ) ;

int
sys_select(struct thread *td, struct select_args *uap)
{
 struct timeval tv, *tvp;
 int error;

 if (uap->tv != ((void*)0)) {
  error = copyin(uap->tv, &tv, sizeof(tv));
  if (error)
   return (error);
  tvp = &tv;
 } else
  tvp = ((void*)0);

 return (kern_select(td, uap->nd, uap->in, uap->ou, uap->ex, tvp,
     NFDBITS));
}
