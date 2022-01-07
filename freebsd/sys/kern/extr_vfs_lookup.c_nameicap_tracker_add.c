
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct nameidata {int ni_lcf; int ni_cap_tracker; struct vnode* ni_beneath_latch; } ;
struct nameicap_tracker {struct vnode* dp; } ;


 int MPASS (int) ;
 int M_WAITOK ;
 int NI_LCF_BENEATH_ABS ;
 int NI_LCF_BENEATH_LATCHED ;
 int NI_LCF_CAP_DOTDOT ;
 int NI_LCF_LATCH ;
 int TAILQ_INSERT_TAIL (int *,struct nameicap_tracker*,int ) ;
 scalar_t__ VDIR ;
 int nm_link ;
 int nt_zone ;
 struct nameicap_tracker* uma_zalloc (int ,int ) ;
 int vhold (struct vnode*) ;

__attribute__((used)) static void
nameicap_tracker_add(struct nameidata *ndp, struct vnode *dp)
{
 struct nameicap_tracker *nt;

 if ((ndp->ni_lcf & NI_LCF_CAP_DOTDOT) == 0 || dp->v_type != VDIR)
  return;
 if ((ndp->ni_lcf & (NI_LCF_BENEATH_ABS | NI_LCF_BENEATH_LATCHED)) ==
     NI_LCF_BENEATH_ABS) {
  MPASS((ndp->ni_lcf & NI_LCF_LATCH) != 0);
  if (dp != ndp->ni_beneath_latch)
   return;
  ndp->ni_lcf |= NI_LCF_BENEATH_LATCHED;
 }
 nt = uma_zalloc(nt_zone, M_WAITOK);
 vhold(dp);
 nt->dp = dp;
 TAILQ_INSERT_TAIL(&ndp->ni_cap_tracker, nt, nm_link);
}
