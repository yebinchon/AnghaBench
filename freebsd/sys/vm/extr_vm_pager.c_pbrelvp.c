
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_xflags; int b_flags; int * b_bufobj; int * b_vp; } ;


 int BX_VNCLEAN ;
 int BX_VNDIRTY ;
 int B_PAGING ;
 int KASSERT (int,char*) ;

void
pbrelvp(struct buf *bp)
{

 KASSERT(bp->b_vp != ((void*)0), ("pbrelvp: NULL"));
 KASSERT(bp->b_bufobj != ((void*)0), ("pbrelvp: NULL bufobj"));
 KASSERT((bp->b_xflags & (BX_VNDIRTY | BX_VNCLEAN)) == 0,
     ("pbrelvp: pager buf on vnode list."));

 bp->b_vp = ((void*)0);
 bp->b_bufobj = ((void*)0);
 bp->b_flags &= ~B_PAGING;
}
