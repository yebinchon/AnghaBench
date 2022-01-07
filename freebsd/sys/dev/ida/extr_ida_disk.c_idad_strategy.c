
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idad_softc {int flags; int controller; } ;
struct bio {scalar_t__ bio_cmd; int bio_bcount; int bio_resid; int bio_flags; struct idad_softc* bio_driver1; int bio_error; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct idad_softc* d_drv1; } ;


 int BIO_ERROR ;
 scalar_t__ BIO_WRITE ;
 int DRV_WRITEPROT ;
 int EINVAL ;
 int EROFS ;
 int biodone (struct bio*) ;
 int ida_submit_buf (int ,struct bio*) ;

__attribute__((used)) static void
idad_strategy(struct bio *bp)
{
 struct idad_softc *drv;

 drv = bp->bio_disk->d_drv1;
 if (drv == ((void*)0)) {
      bp->bio_error = EINVAL;
  goto bad;
 }




 if (drv->flags & DRV_WRITEPROT && (bp->bio_cmd == BIO_WRITE)) {
  bp->bio_error = EROFS;
  goto bad;
 }

 bp->bio_driver1 = drv;
 ida_submit_buf(drv->controller, bp);
 return;

bad:
 bp->bio_flags |= BIO_ERROR;




 bp->bio_resid = bp->bio_bcount;
 biodone(bp);
 return;
}
