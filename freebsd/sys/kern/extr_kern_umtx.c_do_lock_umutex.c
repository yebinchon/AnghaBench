
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int m_flags; } ;
struct thread {int dummy; } ;
struct _umtx_time {int dummy; } ;


 int EFAULT ;
 int EINTR ;
 int EINVAL ;
 int ERESTART ;


 int _UMUTEX_WAIT ;
 int do_lock_normal (struct thread*,struct umutex*,int,struct _umtx_time*,int) ;
 int do_lock_pi (struct thread*,struct umutex*,int,struct _umtx_time*,int) ;
 int do_lock_pp (struct thread*,struct umutex*,int,struct _umtx_time*,int) ;
 int fueword32 (int *,int*) ;

__attribute__((used)) static int
do_lock_umutex(struct thread *td, struct umutex *m,
    struct _umtx_time *timeout, int mode)
{
 uint32_t flags;
 int error;

 error = fueword32(&m->m_flags, &flags);
 if (error == -1)
  return (EFAULT);

 switch (flags & (129 | 128)) {
 case 0:
  error = do_lock_normal(td, m, flags, timeout, mode);
  break;
 case 129:
  error = do_lock_pi(td, m, flags, timeout, mode);
  break;
 case 128:
  error = do_lock_pp(td, m, flags, timeout, mode);
  break;
 default:
  return (EINVAL);
 }
 if (timeout == ((void*)0)) {
  if (error == EINTR && mode != _UMUTEX_WAIT)
   error = ERESTART;
 } else {

  if (error == ERESTART)
   error = EINTR;
 }
 return (error);
}
