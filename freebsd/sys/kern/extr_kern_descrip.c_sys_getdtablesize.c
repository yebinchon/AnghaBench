
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct thread {scalar_t__* td_retval; int td_proc; } ;
struct getdtablesize_args {int dummy; } ;


 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int RACCT_NOFILE ;
 scalar_t__ getmaxfd (struct thread*) ;
 scalar_t__ racct_get_limit (int ,int ) ;

int
sys_getdtablesize(struct thread *td, struct getdtablesize_args *uap)
{




 td->td_retval[0] = getmaxfd(td);







 return (0);
}
