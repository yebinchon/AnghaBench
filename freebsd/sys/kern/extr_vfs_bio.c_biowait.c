
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct bio {int bio_flags; scalar_t__ bio_error; } ;


 int BIO_DONE ;
 int BIO_ERROR ;
 int EIO ;
 int PRIBIO ;
 int msleep (struct bio*,struct mtx*,int ,char const*,int ) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct bio*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;

int
biowait(struct bio *bp, const char *wchan)
{
 struct mtx *mtxp;

 mtxp = mtx_pool_find(mtxpool_sleep, bp);
 mtx_lock(mtxp);
 while ((bp->bio_flags & BIO_DONE) == 0)
  msleep(bp, mtxp, PRIBIO, wchan, 0);
 mtx_unlock(mtxp);
 if (bp->bio_error != 0)
  return (bp->bio_error);
 if (!(bp->bio_flags & BIO_ERROR))
  return (0);
 return (EIO);
}
