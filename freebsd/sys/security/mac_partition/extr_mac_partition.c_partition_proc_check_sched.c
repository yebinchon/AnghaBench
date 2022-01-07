
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_label; } ;
struct proc {TYPE_1__* p_ucred; } ;
struct TYPE_2__ {int cr_label; } ;


 int ESRCH ;
 int partition_check (int ,int ) ;

__attribute__((used)) static int
partition_proc_check_sched(struct ucred *cred, struct proc *p)
{
 int error;

 error = partition_check(cred->cr_label, p->p_ucred->cr_label);

 return (error ? ESRCH : 0);
}
