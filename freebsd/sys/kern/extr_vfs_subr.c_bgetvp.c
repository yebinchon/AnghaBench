
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; } ;
struct buf {int b_xflags; struct bufobj* b_bufobj; struct vnode* b_vp; int b_flags; } ;


 int ASSERT_BO_WLOCKED (struct bufobj*) ;
 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int CTR3 (int ,char*,struct buf*,struct vnode*,int ) ;
 int KTR_BUF ;
 int VNASSERT (int,struct vnode*,char*) ;
 int buf_vlist_add (struct buf*,struct bufobj*,int) ;
 int vhold (struct vnode*) ;

void
bgetvp(struct vnode *vp, struct buf *bp)
{
 struct bufobj *bo;

 bo = &vp->v_bufobj;
 ASSERT_BO_WLOCKED(bo);
 VNASSERT(bp->b_vp == ((void*)0), bp->b_vp, ("bgetvp: not free"));

 CTR3(KTR_BUF, "bgetvp(%p) vp %p flags %X", bp, vp, bp->b_flags);
 VNASSERT((bp->b_xflags & (BX_VNDIRTY|BX_VNCLEAN)) == 0, vp,
     ("bgetvp: bp already attached! %p", bp));

 vhold(vp);
 bp->b_vp = vp;
 bp->b_bufobj = bo;



 buf_vlist_add(bp, bo, BX_VNCLEAN);
}
