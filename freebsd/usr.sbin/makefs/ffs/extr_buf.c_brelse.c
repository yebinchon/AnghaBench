
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ b_lblkno; struct buf* b_data; scalar_t__ b_bcount; } ;


 int TAILQ_REMOVE (int *,struct buf*,int ) ;
 int assert (int ) ;
 int b_tailq ;
 int buftail ;
 int free (struct buf*) ;

void
brelse(struct buf *bp)
{

 assert (bp != ((void*)0));
 assert (bp->b_data != ((void*)0));

 if (bp->b_lblkno < 0) {
  bp->b_bcount = 0;
  return;
 }

 TAILQ_REMOVE(&buftail, bp, b_tailq);
 free(bp->b_data);
 free(bp);
}
