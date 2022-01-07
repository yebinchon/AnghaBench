
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int cn_flags; int cn_pnbuf; } ;
struct nameidata {int * ni_startdir; TYPE_1__ ni_cnd; int * ni_dvp; int * ni_vp; } ;


 int HASBUF ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int const NDF_NO_DVP_RELE ;
 int const NDF_NO_DVP_UNLOCK ;
 int const NDF_NO_FREE_PNBUF ;
 int const NDF_NO_STARTDIR_RELE ;
 int const NDF_NO_VP_RELE ;
 int const NDF_NO_VP_UNLOCK ;
 int SAVESTART ;
 int VOP_UNLOCK (int *,int ) ;
 int WANTPARENT ;
 int namei_zone ;
 int uma_zfree (int ,int ) ;
 int vput (int *) ;
 int vrele (int *) ;

void
NDFREE(struct nameidata *ndp, const u_int flags)
{
 int unlock_dvp;
 int unlock_vp;

 unlock_dvp = 0;
 unlock_vp = 0;

 if (!(flags & NDF_NO_FREE_PNBUF) &&
     (ndp->ni_cnd.cn_flags & HASBUF)) {
  uma_zfree(namei_zone, ndp->ni_cnd.cn_pnbuf);
  ndp->ni_cnd.cn_flags &= ~HASBUF;
 }
 if (!(flags & NDF_NO_VP_UNLOCK) &&
     (ndp->ni_cnd.cn_flags & LOCKLEAF) && ndp->ni_vp)
  unlock_vp = 1;
 if (!(flags & NDF_NO_DVP_UNLOCK) &&
     (ndp->ni_cnd.cn_flags & LOCKPARENT) &&
     ndp->ni_dvp != ndp->ni_vp)
  unlock_dvp = 1;
 if (!(flags & NDF_NO_VP_RELE) && ndp->ni_vp) {
  if (unlock_vp) {
   vput(ndp->ni_vp);
   unlock_vp = 0;
  } else
   vrele(ndp->ni_vp);
  ndp->ni_vp = ((void*)0);
 }
 if (unlock_vp)
  VOP_UNLOCK(ndp->ni_vp, 0);
 if (!(flags & NDF_NO_DVP_RELE) &&
     (ndp->ni_cnd.cn_flags & (LOCKPARENT|WANTPARENT))) {
  if (unlock_dvp) {
   vput(ndp->ni_dvp);
   unlock_dvp = 0;
  } else
   vrele(ndp->ni_dvp);
  ndp->ni_dvp = ((void*)0);
 }
 if (unlock_dvp)
  VOP_UNLOCK(ndp->ni_dvp, 0);
 if (!(flags & NDF_NO_STARTDIR_RELE) &&
     (ndp->ni_cnd.cn_flags & SAVESTART)) {
  vrele(ndp->ni_startdir);
  ndp->ni_startdir = ((void*)0);
 }
}
