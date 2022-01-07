
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_strategy_args {struct vnode* a_vp; struct buf* a_bp; } ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {scalar_t__ v_type; int v_mount; TYPE_1__ v_bufobj; } ;
struct ucred {int dummy; } ;
struct buf {int b_flags; int b_blkno; int b_lblkno; scalar_t__ b_iocmd; struct ucred* b_wcred; struct ucred* b_rcred; struct vnode* b_vp; } ;


 scalar_t__ BIO_READ ;
 int B_ASYNC ;
 int B_DONE ;
 int DEV_BSIZE ;
 int KASSERT (int,char*) ;
 int NOCRED ;
 int VFSTONFS (int ) ;
 scalar_t__ VREG ;
 int curthread ;
 scalar_t__ ncl_asyncio (int ,struct buf*,int ,int ) ;
 int ncl_doio (struct vnode*,struct buf*,struct ucred*,int ,int) ;

__attribute__((used)) static int
nfs_strategy(struct vop_strategy_args *ap)
{
 struct buf *bp;
 struct vnode *vp;
 struct ucred *cr;

 bp = ap->a_bp;
 vp = ap->a_vp;
 KASSERT(bp->b_vp == vp, ("missing b_getvp"));
 KASSERT(!(bp->b_flags & B_DONE),
     ("nfs_strategy: buffer %p unexpectedly marked B_DONE", bp));

 if (vp->v_type == VREG && bp->b_blkno == bp->b_lblkno)
  bp->b_blkno = bp->b_lblkno * (vp->v_bufobj.bo_bsize /
      DEV_BSIZE);
 if (bp->b_iocmd == BIO_READ)
  cr = bp->b_rcred;
 else
  cr = bp->b_wcred;






 if ((bp->b_flags & B_ASYNC) == 0 ||
     ncl_asyncio(VFSTONFS(vp->v_mount), bp, NOCRED, curthread))
  (void) ncl_doio(vp, bp, cr, curthread, 1);
 return (0);
}
