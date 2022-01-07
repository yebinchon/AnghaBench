
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {scalar_t__ cr_uid; scalar_t__ cr_svuid; scalar_t__ cr_ruid; int cr_ngroups; int cr_svgid; int cr_rgid; int * cr_groups; } ;
struct proc {struct ucred* p_ucred; } ;
struct pmc {TYPE_1__* pm_owner; } ;
struct TYPE_2__ {struct proc* po_owner; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int crfree (struct ucred*) ;
 int crhold (struct ucred*) ;
 int groupmember (int ,struct ucred*) ;

__attribute__((used)) static int
pmc_can_attach(struct pmc *pm, struct proc *t)
{
 struct proc *o;
 struct ucred *oc, *tc;
 int decline_attach, i;





 if ((o = pm->pm_owner->po_owner) == t)
  return 0;

 PROC_LOCK(o);
 oc = o->p_ucred;
 crhold(oc);
 PROC_UNLOCK(o);

 PROC_LOCK(t);
 tc = t->p_ucred;
 crhold(tc);
 PROC_UNLOCK(t);






 decline_attach = oc->cr_uid != tc->cr_uid &&
     oc->cr_uid != tc->cr_svuid &&
     oc->cr_uid != tc->cr_ruid;





 for (i = 0; !decline_attach && i < tc->cr_ngroups; i++)
  decline_attach = !groupmember(tc->cr_groups[i], oc);


 if (decline_attach == 0)
  decline_attach = !groupmember(tc->cr_rgid, oc) ||
      !groupmember(tc->cr_svgid, oc);

 crfree(tc);
 crfree(oc);

 return !decline_attach;
}
