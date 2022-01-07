
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct buf {int b_flags; } ;


 int B_DONE ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct buf*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 int wakeup (struct buf*) ;

void
bdone(struct buf *bp)
{
 struct mtx *mtxp;

 mtxp = mtx_pool_find(mtxpool_sleep, bp);
 mtx_lock(mtxp);
 bp->b_flags |= B_DONE;
 wakeup(bp);
 mtx_unlock(mtxp);
}
