
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {struct ucred* p_ucred; } ;



void
proc_set_cred_init(struct proc *p, struct ucred *newcred)
{

 p->p_ucred = newcred;
}
