
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct _umtx_time {int _flags; int _timeout; } ;
struct _umtx_op_args {int * uaddr2; int obj; scalar_t__ uaddr1; } ;


 int EINTR ;
 int UMTX_ABSTIME ;
 int copyout (int *,struct _umtx_time*,int) ;
 int do_sem2_wait (struct thread*,int ,struct _umtx_time*) ;
 int umtx_copyin_umtx_time (int *,size_t,struct _umtx_time*) ;

__attribute__((used)) static int
__umtx_op_sem2_wait(struct thread *td, struct _umtx_op_args *uap)
{
 struct _umtx_time *tm_p, timeout;
 size_t uasize;
 int error;


 if (uap->uaddr2 == ((void*)0)) {
  uasize = 0;
  tm_p = ((void*)0);
 } else {
  uasize = (size_t)uap->uaddr1;
  error = umtx_copyin_umtx_time(uap->uaddr2, uasize, &timeout);
  if (error != 0)
   return (error);
  tm_p = &timeout;
 }
 error = do_sem2_wait(td, uap->obj, tm_p);
 if (error == EINTR && uap->uaddr2 != ((void*)0) &&
     (timeout._flags & UMTX_ABSTIME) == 0 &&
     uasize >= sizeof(struct _umtx_time) + sizeof(struct timespec)) {
  error = copyout(&timeout._timeout,
      (struct _umtx_time *)uap->uaddr2 + 1,
      sizeof(struct timespec));
  if (error == 0) {
   error = EINTR;
  }
 }

 return (error);
}
