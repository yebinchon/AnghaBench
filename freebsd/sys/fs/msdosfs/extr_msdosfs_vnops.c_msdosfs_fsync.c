
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_fsync_args {scalar_t__ a_waitfor; int a_vp; int a_td; } ;
struct vnode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* de_pmp; } ;
struct TYPE_4__ {struct vnode* pm_devvp; } ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 scalar_t__ MNT_WAIT ;
 int VOP_FSYNC (struct vnode*,scalar_t__,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_2__* VTODE (int ) ;
 int deupdat (TYPE_2__*,int) ;
 int vn_lock (struct vnode*,int) ;
 int vop_stdfsync (struct vop_fsync_args*) ;

__attribute__((used)) static int
msdosfs_fsync(struct vop_fsync_args *ap)
{
 struct vnode *devvp;
 int allerror, error;

 vop_stdfsync(ap);
 if (ap->a_waitfor == MNT_WAIT) {
  devvp = VTODE(ap->a_vp)->de_pmp->pm_devvp;
  vn_lock(devvp, LK_EXCLUSIVE | LK_RETRY);
  allerror = VOP_FSYNC(devvp, MNT_WAIT, ap->a_td);
  VOP_UNLOCK(devvp, 0);
 } else
  allerror = 0;

 error = deupdat(VTODE(ap->a_vp), ap->a_waitfor == MNT_WAIT);
 if (allerror == 0)
  allerror = error;
 return (allerror);
}
