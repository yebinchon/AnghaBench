
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; int td_pflags; int * td_ar; } ;


 int TDP_AUDITREC ;
 int audit_commit (int *,int,int) ;

void
audit_syscall_exit(int error, struct thread *td)
{
 int retval;
 if (error)
  retval = -1;
 else
  retval = td->td_retval[0];

 audit_commit(td->td_ar, error, retval);
 td->td_ar = ((void*)0);
 td->td_pflags &= ~TDP_AUDITREC;
}
