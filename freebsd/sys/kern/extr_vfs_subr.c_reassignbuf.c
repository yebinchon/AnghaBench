
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_type; } ;
struct bufv {scalar_t__ bv_cnt; int bv_hd; } ;
struct bufobj {int bo_flag; struct bufv bo_dirty; struct bufv bo_clean; } ;
struct buf {int b_flags; int b_xflags; struct bufobj* b_bufobj; struct vnode* b_vp; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_ONWORKLST ;
 int BO_UNLOCK (struct bufobj*) ;
 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int B_DELWRI ;
 int B_PAGING ;
 int CTR3 (int ,char*,struct buf*,struct vnode*,int) ;
 int KASSERT (int,char*) ;
 int KTR_BUF ;
 int LIST_REMOVE (struct bufobj*,int ) ;
 struct buf* TAILQ_FIRST (int *) ;
 struct buf* TAILQ_LAST (int *,int ) ;


 int bo_synclist ;
 int buf_vlist_add (struct buf*,struct bufobj*,int) ;
 int buf_vlist_remove (struct buf*) ;
 int buflists ;
 int dirdelay ;
 int filedelay ;
 int metadelay ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,...) ;
 int reassignbufcalls ;
 int sync_mtx ;
 int syncer_worklist_len ;
 int vn_syncer_add_to_worklist (struct bufobj*,int) ;

void
reassignbuf(struct buf *bp)
{
 struct vnode *vp;
 struct bufobj *bo;
 int delay;




 vp = bp->b_vp;
 bo = bp->b_bufobj;
 ++reassignbufcalls;

 CTR3(KTR_BUF, "reassignbuf(%p) vp %p flags %X",
     bp, bp->b_vp, bp->b_flags);




 if (bp->b_flags & B_PAGING)
  panic("cannot reassign paging buffer");




 BO_LOCK(bo);
 if (bp->b_xflags & (BX_VNDIRTY | BX_VNCLEAN))
  buf_vlist_remove(bp);
 else
  panic("reassignbuf: Buffer %p not on queue.", bp);




 if (bp->b_flags & B_DELWRI) {
  if ((bo->bo_flag & BO_ONWORKLST) == 0) {
   switch (vp->v_type) {
   case 128:
    delay = dirdelay;
    break;
   case 129:
    delay = metadelay;
    break;
   default:
    delay = filedelay;
   }
   vn_syncer_add_to_worklist(bo, delay);
  }
  buf_vlist_add(bp, bo, BX_VNDIRTY);
 } else {
  buf_vlist_add(bp, bo, BX_VNCLEAN);

  if ((bo->bo_flag & BO_ONWORKLST) && bo->bo_dirty.bv_cnt == 0) {
   mtx_lock(&sync_mtx);
   LIST_REMOVE(bo, bo_synclist);
   syncer_worklist_len--;
   mtx_unlock(&sync_mtx);
   bo->bo_flag &= ~BO_ONWORKLST;
  }
 }
 BO_UNLOCK(bo);
}
