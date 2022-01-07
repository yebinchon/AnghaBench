
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {int bo_flag; TYPE_1__ bo_dirty; } ;
struct buf {int b_xflags; struct bufobj* b_bufobj; struct vnode* b_vp; int b_flags; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_ONWORKLST ;
 int BO_UNLOCK (struct bufobj*) ;
 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int CTR3 (int ,char*,struct buf*,struct vnode*,int ) ;
 int KASSERT (int ,char*) ;
 int KTR_BUF ;
 int LIST_REMOVE (struct bufobj*,int ) ;
 int bo_synclist ;
 int buf_vlist_remove (struct buf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,struct buf*) ;
 int sync_mtx ;
 int syncer_worklist_len ;
 int vdrop (struct vnode*) ;

void
brelvp(struct buf *bp)
{
 struct bufobj *bo;
 struct vnode *vp;

 CTR3(KTR_BUF, "brelvp(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
 KASSERT(bp->b_vp != ((void*)0), ("brelvp: NULL"));




 vp = bp->b_vp;
 bo = bp->b_bufobj;
 BO_LOCK(bo);
 if (bp->b_xflags & (BX_VNDIRTY | BX_VNCLEAN))
  buf_vlist_remove(bp);
 else
  panic("brelvp: Buffer %p not on queue.", bp);
 if ((bo->bo_flag & BO_ONWORKLST) && bo->bo_dirty.bv_cnt == 0) {
  bo->bo_flag &= ~BO_ONWORKLST;
  mtx_lock(&sync_mtx);
  LIST_REMOVE(bo, bo_synclist);
  syncer_worklist_len--;
  mtx_unlock(&sync_mtx);
 }
 bp->b_vp = ((void*)0);
 bp->b_bufobj = ((void*)0);
 BO_UNLOCK(bo);
 vdrop(vp);
}
