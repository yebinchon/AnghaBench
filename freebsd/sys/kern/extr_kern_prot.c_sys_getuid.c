
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; int * td_retval; } ;
struct getuid_args {int dummy; } ;
struct TYPE_2__ {int cr_uid; int cr_ruid; } ;



int
sys_getuid(struct thread *td, struct getuid_args *uap)
{

 td->td_retval[0] = td->td_ucred->cr_ruid;



 return (0);
}
