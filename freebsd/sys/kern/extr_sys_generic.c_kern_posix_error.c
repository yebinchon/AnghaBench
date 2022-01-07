
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_errno; int* td_retval; int td_pflags; } ;


 int TDP_NERRNO ;

int
kern_posix_error(struct thread *td, int error)
{

 if (error <= 0)
  return (error);
 td->td_errno = error;
 td->td_pflags |= TDP_NERRNO;
 td->td_retval[0] = error;
 return (0);
}
