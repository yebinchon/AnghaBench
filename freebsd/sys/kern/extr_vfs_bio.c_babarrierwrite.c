
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; } ;


 int B_ASYNC ;
 int B_BARRIER ;
 int bwrite (struct buf*) ;

void
babarrierwrite(struct buf *bp)
{

 bp->b_flags |= B_ASYNC | B_BARRIER;
 (void) bwrite(bp);
}
