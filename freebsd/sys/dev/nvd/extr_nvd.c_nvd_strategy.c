
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvd_disk {scalar_t__ ordered_in_flight; scalar_t__ cur_depth; int bioqtask; int tq; int bioqlock; int bioq; } ;
struct bio {int bio_flags; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int BIO_ORDERED ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 scalar_t__ atomic_fetchadd_int (scalar_t__*,int) ;
 int * bioq_first (int *) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvd_bio_submit (struct nvd_disk*,struct bio*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
nvd_strategy(struct bio *bp)
{
 struct nvd_disk *ndisk = (struct nvd_disk *)bp->bio_disk->d_drv1;





 if (__predict_false(bp->bio_flags & BIO_ORDERED)) {
  if (atomic_fetchadd_int(&ndisk->ordered_in_flight, 1) == 0 &&
      ndisk->cur_depth == 0 && bioq_first(&ndisk->bioq) == ((void*)0)) {
   nvd_bio_submit(ndisk, bp);
   return;
  }
 } else if (__predict_true(ndisk->ordered_in_flight == 0)) {
  nvd_bio_submit(ndisk, bp);
  return;
 }





 mtx_lock(&ndisk->bioqlock);
 bioq_insert_tail(&ndisk->bioq, bp);
 mtx_unlock(&ndisk->bioqlock);
 taskqueue_enqueue(ndisk->tq, &ndisk->bioqtask);
}
