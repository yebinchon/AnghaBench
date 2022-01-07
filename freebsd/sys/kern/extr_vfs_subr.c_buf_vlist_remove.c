
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufv {int bv_cnt; int bv_hd; int bv_root; } ;
struct buf {int b_xflags; int b_lblkno; TYPE_1__* b_bufobj; } ;
struct TYPE_2__ {struct bufv bo_clean; struct bufv bo_dirty; } ;


 int ASSERT_BO_WLOCKED (TYPE_1__*) ;
 int BUF_PCTRIE_REMOVE (int *,int ) ;
 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int KASSERT (int,char*) ;
 int TAILQ_REMOVE (int *,struct buf*,int ) ;
 int b_bobufs ;

__attribute__((used)) static void
buf_vlist_remove(struct buf *bp)
{
 struct bufv *bv;

 KASSERT(bp->b_bufobj != ((void*)0), ("No b_bufobj %p", bp));
 ASSERT_BO_WLOCKED(bp->b_bufobj);
 KASSERT((bp->b_xflags & (BX_VNDIRTY|BX_VNCLEAN)) !=
     (BX_VNDIRTY|BX_VNCLEAN),
     ("buf_vlist_remove: Buf %p is on two lists", bp));
 if (bp->b_xflags & BX_VNDIRTY)
  bv = &bp->b_bufobj->bo_dirty;
 else
  bv = &bp->b_bufobj->bo_clean;
 BUF_PCTRIE_REMOVE(&bv->bv_root, bp->b_lblkno);
 TAILQ_REMOVE(&bv->bv_hd, bp, b_bobufs);
 bv->bv_cnt--;
 bp->b_xflags &= ~(BX_VNDIRTY | BX_VNCLEAN);
}
