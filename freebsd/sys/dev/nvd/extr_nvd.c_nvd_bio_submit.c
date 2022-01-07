
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvd_disk {scalar_t__ cur_depth; scalar_t__ ordered_in_flight; int ns; } ;
struct bio {int bio_flags; int bio_error; int bio_bcount; int bio_resid; int * bio_driver1; } ;


 int BIO_ERROR ;
 int BIO_ORDERED ;
 int NVD_ODEPTH ;
 scalar_t__ __predict_false (int) ;
 int atomic_add_int (scalar_t__*,int) ;
 int atomic_fetchadd_int (scalar_t__*,int) ;
 int biodone (struct bio*) ;
 int nvd_done ;
 int nvme_ns_bio_process (int ,struct bio*,int ) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
nvd_bio_submit(struct nvd_disk *ndisk, struct bio *bp)
{
 int err;

 bp->bio_driver1 = ((void*)0);
 if (__predict_false(bp->bio_flags & BIO_ORDERED))
  atomic_add_int(&ndisk->cur_depth, NVD_ODEPTH);
 else
  atomic_add_int(&ndisk->cur_depth, 1);
 err = nvme_ns_bio_process(ndisk->ns, bp, nvd_done);
 if (err) {
  if (__predict_false(bp->bio_flags & BIO_ORDERED)) {
   atomic_add_int(&ndisk->cur_depth, -NVD_ODEPTH);
   atomic_add_int(&ndisk->ordered_in_flight, -1);
   wakeup(&ndisk->cur_depth);
  } else {
   if (atomic_fetchadd_int(&ndisk->cur_depth, -1) == 1 &&
       __predict_false(ndisk->ordered_in_flight != 0))
    wakeup(&ndisk->cur_depth);
  }
  bp->bio_error = err;
  bp->bio_flags |= BIO_ERROR;
  bp->bio_resid = bp->bio_bcount;
  biodone(bp);
 }
}
