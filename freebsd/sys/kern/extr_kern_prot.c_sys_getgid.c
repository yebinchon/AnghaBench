
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; int * td_retval; } ;
struct getgid_args {int dummy; } ;
struct TYPE_2__ {int * cr_groups; int cr_rgid; } ;



int
sys_getgid(struct thread *td, struct getgid_args *uap)
{

 td->td_retval[0] = td->td_ucred->cr_rgid;



 return (0);
}
