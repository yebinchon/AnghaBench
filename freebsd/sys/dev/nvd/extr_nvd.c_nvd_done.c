
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_completion {int dummy; } ;
struct nvd_disk {scalar_t__ cur_depth; scalar_t__ ordered_in_flight; } ;
struct bio {int bio_flags; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct nvd_disk* d_drv1; } ;


 int BIO_ORDERED ;
 int NVD_ODEPTH ;
 scalar_t__ __predict_false (int) ;
 int atomic_add_int (scalar_t__*,int) ;
 int atomic_fetchadd_int (scalar_t__*,int) ;
 int biodone (struct bio*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
nvd_done(void *arg, const struct nvme_completion *cpl)
{
 struct bio *bp = (struct bio *)arg;
 struct nvd_disk *ndisk = bp->bio_disk->d_drv1;

 if (__predict_false(bp->bio_flags & BIO_ORDERED)) {
  atomic_add_int(&ndisk->cur_depth, -NVD_ODEPTH);
  atomic_add_int(&ndisk->ordered_in_flight, -1);
  wakeup(&ndisk->cur_depth);
 } else {
  if (atomic_fetchadd_int(&ndisk->cur_depth, -1) == 1 &&
      __predict_false(ndisk->ordered_in_flight != 0))
   wakeup(&ndisk->cur_depth);
 }

 biodone(bp);
}
