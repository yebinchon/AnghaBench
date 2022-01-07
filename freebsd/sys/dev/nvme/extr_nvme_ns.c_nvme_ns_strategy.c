
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_namespace {int dummy; } ;
struct bio {int bio_error; int bio_bcount; int bio_resid; int bio_flags; TYPE_1__* bio_dev; } ;
struct TYPE_2__ {struct nvme_namespace* si_drv1; } ;


 int BIO_ERROR ;
 int biodone (struct bio*) ;
 int nvme_ns_bio_process (struct nvme_namespace*,struct bio*,int ) ;
 int nvme_ns_strategy_done ;

__attribute__((used)) static void
nvme_ns_strategy(struct bio *bp)
{
 struct nvme_namespace *ns;
 int err;

 ns = bp->bio_dev->si_drv1;
 err = nvme_ns_bio_process(ns, bp, nvme_ns_strategy_done);

 if (err) {
  bp->bio_error = err;
  bp->bio_flags |= BIO_ERROR;
  bp->bio_resid = bp->bio_bcount;
  biodone(bp);
 }

}
