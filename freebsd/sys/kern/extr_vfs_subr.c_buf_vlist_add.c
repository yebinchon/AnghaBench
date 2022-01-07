
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufv {scalar_t__ bv_cnt; int bv_root; int bv_hd; } ;
struct bufobj {int bo_flag; struct bufv bo_clean; struct bufv bo_dirty; } ;
struct buf {int b_xflags; int b_lblkno; } ;
typedef int b_xflags_t ;
struct TYPE_2__ {int b_lblkno; } ;


 int ASSERT_BO_WLOCKED (struct bufobj*) ;
 int BO_DEAD ;
 int BUF_PCTRIE_INSERT (int *,struct buf*) ;
 struct buf* BUF_PCTRIE_LOOKUP_LE (int *,int ) ;
 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int KASSERT (int,char*) ;
 int TAILQ_INSERT_AFTER (int *,struct buf*,struct buf*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct buf*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct buf*,int ) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 int b_bobufs ;
 int buflists ;
 int panic (char*) ;

__attribute__((used)) static void
buf_vlist_add(struct buf *bp, struct bufobj *bo, b_xflags_t xflags)
{
 struct bufv *bv;
 struct buf *n;
 int error;

 ASSERT_BO_WLOCKED(bo);
 KASSERT((xflags & BX_VNDIRTY) == 0 || (bo->bo_flag & BO_DEAD) == 0,
     ("dead bo %p", bo));
 KASSERT((bp->b_xflags & (BX_VNDIRTY|BX_VNCLEAN)) == 0,
     ("buf_vlist_add: Buf %p has existing xflags %d", bp, bp->b_xflags));
 bp->b_xflags |= xflags;
 if (xflags & BX_VNDIRTY)
  bv = &bo->bo_dirty;
 else
  bv = &bo->bo_clean;






 if (bv->bv_cnt == 0 ||
     bp->b_lblkno > TAILQ_LAST(&bv->bv_hd, buflists)->b_lblkno)
  TAILQ_INSERT_TAIL(&bv->bv_hd, bp, b_bobufs);
 else if ((n = BUF_PCTRIE_LOOKUP_LE(&bv->bv_root, bp->b_lblkno)) == ((void*)0))
  TAILQ_INSERT_HEAD(&bv->bv_hd, bp, b_bobufs);
 else
  TAILQ_INSERT_AFTER(&bv->bv_hd, n, bp, b_bobufs);
 error = BUF_PCTRIE_INSERT(&bv->bv_root, bp);
 if (error)
  panic("buf_vlist_add:  Preallocated nodes insufficient.");
 bv->bv_cnt++;
}
