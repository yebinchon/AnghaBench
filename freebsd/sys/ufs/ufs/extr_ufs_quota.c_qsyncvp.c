
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_mount; } ;
struct ufsmount {scalar_t__* um_quotas; } ;
struct dquot {int dummy; } ;
struct TYPE_2__ {struct dquot** i_dquot; } ;


 int MAXQUOTAS ;
 struct dquot* NODQUOT ;
 scalar_t__ NULLVP ;
 struct ufsmount* VFSTOUFS (int ) ;
 TYPE_1__* VTOI (struct vnode*) ;
 int dqsync (struct vnode*,struct dquot*) ;

int
qsyncvp(struct vnode *vp)
{
 struct ufsmount *ump = VFSTOUFS(vp->v_mount);
 struct dquot *dq;
 int i;





 for (i = 0; i < MAXQUOTAS; i++)
  if (ump->um_quotas[i] != NULLVP)
   break;
 if (i == MAXQUOTAS)
  return (0);




 for (i = 0; i < MAXQUOTAS; i++) {
  dq = VTOI(vp)->i_dquot[i];
  if (dq != NODQUOT)
   dqsync(vp, dq);
 }
 return (0);
}
