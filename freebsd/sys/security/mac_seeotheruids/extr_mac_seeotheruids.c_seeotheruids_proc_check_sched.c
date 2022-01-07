
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {int p_ucred; } ;


 int seeotheruids_check (struct ucred*,int ) ;

__attribute__((used)) static int
seeotheruids_proc_check_sched(struct ucred *cred, struct proc *p)
{

 return (seeotheruids_check(cred, p->p_ucred));
}
