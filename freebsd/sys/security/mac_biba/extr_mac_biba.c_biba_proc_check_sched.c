
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_label; } ;
struct proc {TYPE_1__* p_ucred; } ;
struct mac_biba {int dummy; } ;
struct TYPE_2__ {int cr_label; } ;


 int EACCES ;
 int ESRCH ;
 struct mac_biba* SLOT (int ) ;
 int biba_dominate_effective (struct mac_biba*,struct mac_biba*) ;
 int biba_enabled ;

__attribute__((used)) static int
biba_proc_check_sched(struct ucred *cred, struct proc *p)
{
 struct mac_biba *subj, *obj;

 if (!biba_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(p->p_ucred->cr_label);


 if (!biba_dominate_effective(obj, subj))
  return (ESRCH);
 if (!biba_dominate_effective(subj, obj))
  return (EACCES);

 return (0);
}
