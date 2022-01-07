
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bv_root; } ;
struct TYPE_3__ {int bv_root; } ;
struct bufobj {TYPE_2__ bo_dirty; TYPE_1__ bo_clean; } ;
struct buf {int dummy; } ;
typedef int daddr_t ;


 int ASSERT_BO_LOCKED (struct bufobj*) ;
 struct buf* BUF_PCTRIE_LOOKUP (int *,int ) ;

struct buf *
gbincore(struct bufobj *bo, daddr_t lblkno)
{
 struct buf *bp;

 ASSERT_BO_LOCKED(bo);
 bp = BUF_PCTRIE_LOOKUP(&bo->bo_clean.bv_root, lblkno);
 if (bp != ((void*)0))
  return (bp);
 return BUF_PCTRIE_LOOKUP(&bo->bo_dirty.bv_root, lblkno);
}
