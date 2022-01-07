
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct bio {int dummy; } ;


 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct bio*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 int wakeup (struct bio*) ;

__attribute__((used)) static void
nvme_ns_bio_test_cb(struct bio *bio)
{
 struct mtx *mtx;

 mtx = mtx_pool_find(mtxpool_sleep, bio);
 mtx_lock(mtx);
 wakeup(bio);
 mtx_unlock(mtx);
}
