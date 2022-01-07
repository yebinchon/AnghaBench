
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_frame_header {int dummy; } ;
struct mfi_disk {int dummy; } ;
struct bio {int bio_flags; scalar_t__ bio_error; scalar_t__ bio_resid; scalar_t__ bio_bcount; struct mfi_frame_header* bio_driver1; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct mfi_disk* d_drv1; } ;


 int BIO_ERROR ;
 scalar_t__ EIO ;
 int biodone (struct bio*) ;
 int disk_err (struct bio*,char*,int,int) ;

void
mfi_disk_complete(struct bio *bio)
{
 struct mfi_disk *sc;
 struct mfi_frame_header *hdr;

 sc = bio->bio_disk->d_drv1;
 hdr = bio->bio_driver1;

 if (bio->bio_flags & BIO_ERROR) {
  bio->bio_resid = bio->bio_bcount;
  if (bio->bio_error == 0)
   bio->bio_error = EIO;
  disk_err(bio, "hard error", -1, 1);
 } else {
  bio->bio_resid = 0;
 }
 biodone(bio);
}
