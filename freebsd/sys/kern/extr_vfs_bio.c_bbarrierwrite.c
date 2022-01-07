
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int b_flags; } ;


 int B_BARRIER ;
 int bwrite (struct buf*) ;

int
bbarrierwrite(struct buf *bp)
{

 bp->b_flags |= B_BARRIER;
 return (bwrite(bp));
}
