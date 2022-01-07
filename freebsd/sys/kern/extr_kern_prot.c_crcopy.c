
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_ref; int cr_loginclass; int cr_prison; int cr_ruidinfo; int cr_uidinfo; int cr_groups; int cr_ngroups; int cr_startcopy; int cr_endcopy; } ;
typedef scalar_t__ caddr_t ;


 int KASSERT (int,char*) ;
 int audit_cred_copy (struct ucred*,struct ucred*) ;
 int bcopy (int *,int *,unsigned int) ;
 int crsetgroups (struct ucred*,int ,int ) ;
 int loginclass_hold (int ) ;
 int mac_cred_copy (struct ucred*,struct ucred*) ;
 int prison_hold (int ) ;
 int uihold (int ) ;

void
crcopy(struct ucred *dest, struct ucred *src)
{

 KASSERT(dest->cr_ref == 1, ("crcopy of shared ucred"));
 bcopy(&src->cr_startcopy, &dest->cr_startcopy,
     (unsigned)((caddr_t)&src->cr_endcopy -
  (caddr_t)&src->cr_startcopy));
 crsetgroups(dest, src->cr_ngroups, src->cr_groups);
 uihold(dest->cr_uidinfo);
 uihold(dest->cr_ruidinfo);
 prison_hold(dest->cr_prison);
 loginclass_hold(dest->cr_loginclass);






}
