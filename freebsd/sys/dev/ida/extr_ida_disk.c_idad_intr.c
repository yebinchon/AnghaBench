
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idad_softc {int dummy; } ;
struct bio {int bio_flags; scalar_t__ bio_resid; int bio_error; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct idad_softc* d_drv1; } ;


 int BIO_ERROR ;
 int EIO ;
 int biodone (struct bio*) ;

void
idad_intr(struct bio *bp)
{
 struct idad_softc *drv;

 drv = bp->bio_disk->d_drv1;

 if (bp->bio_flags & BIO_ERROR)
  bp->bio_error = EIO;
 else
  bp->bio_resid = 0;

 biodone(bp);
}
