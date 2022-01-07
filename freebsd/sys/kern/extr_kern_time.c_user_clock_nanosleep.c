
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
typedef int rqt ;
typedef int rmt ;
typedef int clockid_t ;


 int EFAULT ;
 int EINTR ;
 int TIMER_ABSTIME ;
 int VM_PROT_WRITE ;
 int copyin (struct timespec const*,struct timespec*,int) ;
 int copyout (struct timespec*,struct timespec*,int) ;
 int kern_clock_nanosleep (struct thread*,int ,int,struct timespec*,struct timespec*) ;
 int useracc (struct timespec*,int,int ) ;

__attribute__((used)) static int
user_clock_nanosleep(struct thread *td, clockid_t clock_id, int flags,
    const struct timespec *ua_rqtp, struct timespec *ua_rmtp)
{
 struct timespec rmt, rqt;
 int error;

 error = copyin(ua_rqtp, &rqt, sizeof(rqt));
 if (error)
  return (error);
 if (ua_rmtp != ((void*)0) && (flags & TIMER_ABSTIME) == 0 &&
     !useracc(ua_rmtp, sizeof(rmt), VM_PROT_WRITE))
  return (EFAULT);
 error = kern_clock_nanosleep(td, clock_id, flags, &rqt, &rmt);
 if (error == EINTR && ua_rmtp != ((void*)0) && (flags & TIMER_ABSTIME) == 0) {
  int error2;

  error2 = copyout(&rmt, ua_rmtp, sizeof(rmt));
  if (error2)
   error = error2;
 }
 return (error);
}
