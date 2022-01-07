
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts ;
struct timespec {int dummy; } ;
struct thread {int * td_retval; } ;
struct kevent_copyops {int kevent_size; } ;
struct kevent {int dummy; } ;
struct g_kevent_args {int nevents; int nchanges; int fd; struct kevent* changelist; int * timeout; struct kevent* eventlist; } ;


 scalar_t__ KTRPOINT (struct thread*,int ) ;
 int KTR_STRUCT_ARRAY ;
 int UIO_USERSPACE ;
 int copyin (int *,struct timespec*,int) ;
 int kern_kevent (struct thread*,int ,int ,int ,struct kevent_copyops*,struct timespec*) ;
 int ktrstructarray (char const*,int ,struct kevent*,int ,int ) ;

__attribute__((used)) static int
kern_kevent_generic(struct thread *td, struct g_kevent_args *uap,
    struct kevent_copyops *k_ops, const char *struct_name)
{
 struct timespec ts, *tsp;



 int error;

 if (uap->timeout != ((void*)0)) {
  error = copyin(uap->timeout, &ts, sizeof(ts));
  if (error)
   return (error);
  tsp = &ts;
 } else
  tsp = ((void*)0);







 error = kern_kevent(td, uap->fd, uap->nchanges, uap->nevents,
     k_ops, tsp);







 return (error);
}
