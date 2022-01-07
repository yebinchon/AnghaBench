
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_label; } ;
struct proc {TYPE_1__* p_ucred; } ;
struct mac_lomac {int dummy; } ;
struct TYPE_2__ {int cr_label; } ;


 int EACCES ;
 int ESRCH ;
 struct mac_lomac* SLOT (int ) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_enabled ;
 int lomac_subject_dominate (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static int
lomac_proc_check_debug(struct ucred *cred, struct proc *p)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(p->p_ucred->cr_label);


 if (!lomac_dominate_single(obj, subj))
  return (ESRCH);
 if (!lomac_subject_dominate(subj, obj))
  return (EACCES);

 return (0);
}
