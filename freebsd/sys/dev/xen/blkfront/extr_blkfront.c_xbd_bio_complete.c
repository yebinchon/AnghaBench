
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int dummy; } ;
struct xbd_command {scalar_t__ cm_status; struct bio* cm_bp; } ;
struct bio {int bio_flags; scalar_t__ bio_resid; int bio_error; } ;


 int BIO_ERROR ;
 scalar_t__ BLKIF_RSP_OKAY ;
 int EIO ;
 scalar_t__ __predict_false (int) ;
 int biodone (struct bio*) ;
 int disk_err (struct bio*,char*,int,int ) ;
 int printf (char*,scalar_t__) ;
 int xbd_free_command (struct xbd_command*) ;

__attribute__((used)) static void
xbd_bio_complete(struct xbd_softc *sc, struct xbd_command *cm)
{
 struct bio *bp;

 bp = cm->cm_bp;

 if (__predict_false(cm->cm_status != BLKIF_RSP_OKAY)) {
  disk_err(bp, "disk error" , -1, 0);
  printf(" status: %x\n", cm->cm_status);
  bp->bio_flags |= BIO_ERROR;
 }

 if (bp->bio_flags & BIO_ERROR)
  bp->bio_error = EIO;
 else
  bp->bio_resid = 0;

 xbd_free_command(cm);
 biodone(bp);
}
