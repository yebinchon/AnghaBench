
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_strategy_args {TYPE_1__* a_bp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
typedef int daddr_t ;
struct TYPE_2__ {int b_lblkno; } ;


 scalar_t__ I_IS_UFS2 (int ) ;
 int UFS_NXADDR ;
 scalar_t__ VFIFO ;
 int VOP_STRATEGY_APV (int *,struct vop_strategy_args*) ;
 int VTOI (struct vnode*) ;
 int panic (char*) ;
 int ufs_fifoops ;
 int ufs_vnodeops ;

__attribute__((used)) static int
ffsext_strategy(struct vop_strategy_args *ap)







{
 struct vnode *vp;
 daddr_t lbn;

 vp = ap->a_vp;
 lbn = ap->a_bp->b_lblkno;
 if (I_IS_UFS2(VTOI(vp)) && lbn < 0 && lbn >= -UFS_NXADDR)
  return (VOP_STRATEGY_APV(&ufs_vnodeops, ap));
 if (vp->v_type == VFIFO)
  return (VOP_STRATEGY_APV(&ufs_fifoops, ap));
 panic("spec nodes went here");
}
