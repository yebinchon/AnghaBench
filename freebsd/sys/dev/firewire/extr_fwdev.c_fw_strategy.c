
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
struct bio {int bio_bcount; int bio_resid; int bio_flags; int bio_error; struct cdev* bio_dev; } ;


 int BIO_ERROR ;
 scalar_t__ DEV_FWMEM (struct cdev*) ;
 int EOPNOTSUPP ;
 int biodone (struct bio*) ;
 int fwmem_strategy (struct bio*) ;

__attribute__((used)) static void
fw_strategy(struct bio *bp)
{
 struct cdev *dev;

 dev = bp->bio_dev;
 if (DEV_FWMEM(dev)) {
  fwmem_strategy(bp);
  return;
 }

 bp->bio_error = EOPNOTSUPP;
 bp->bio_flags |= BIO_ERROR;
 bp->bio_resid = bp->bio_bcount;
 biodone(bp);
}
