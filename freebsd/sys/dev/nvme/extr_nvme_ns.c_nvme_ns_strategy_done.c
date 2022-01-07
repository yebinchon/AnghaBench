
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_completion {int dummy; } ;
struct bio {scalar_t__ bio_resid; scalar_t__ bio_bcount; int bio_flags; int bio_error; } ;


 int BIO_ERROR ;
 int EIO ;
 int biodone (struct bio*) ;
 scalar_t__ nvme_completion_is_error (struct nvme_completion const*) ;

__attribute__((used)) static void
nvme_ns_strategy_done(void *arg, const struct nvme_completion *cpl)
{
 struct bio *bp = arg;





 if (nvme_completion_is_error(cpl)) {
  bp->bio_error = EIO;
  bp->bio_flags |= BIO_ERROR;
  bp->bio_resid = bp->bio_bcount;
 } else
  bp->bio_resid = 0;

 biodone(bp);
}
