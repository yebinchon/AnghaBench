
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtx {int dummy; } ;
struct buf {int b_flags; } ;


 int B_DONE ;
 int msleep (struct buf*,struct mtx*,int ,char const*,int ) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct buf*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;

void
bwait(struct buf *bp, u_char pri, const char *wchan)
{
 struct mtx *mtxp;

 mtxp = mtx_pool_find(mtxpool_sleep, bp);
 mtx_lock(mtxp);
 while ((bp->b_flags & B_DONE) == 0)
  msleep(bp, mtxp, pri, wchan, 0);
 mtx_unlock(mtxp);
}
