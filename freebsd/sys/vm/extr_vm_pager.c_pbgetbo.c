
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufobj {int dummy; } ;
struct buf {struct bufobj* b_bufobj; int b_flags; int * b_vp; } ;


 int B_PAGING ;
 int KASSERT (int ,char*) ;

void
pbgetbo(struct bufobj *bo, struct buf *bp)
{

 KASSERT(bp->b_vp == ((void*)0), ("pbgetbo: not free (vnode)"));
 KASSERT(bp->b_bufobj == ((void*)0), ("pbgetbo: not free (bufobj)"));

 bp->b_flags |= B_PAGING;
 bp->b_bufobj = bo;
}
