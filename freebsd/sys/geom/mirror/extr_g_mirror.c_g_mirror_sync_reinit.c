
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_consumer; } ;
struct g_mirror_disk {TYPE_2__* d_softc; TYPE_1__ d_sync; } ;
struct bio {scalar_t__ bio_offset; int bio_length; void* bio_caller1; int bio_to; int bio_from; int bio_done; void* bio_data; int bio_cmd; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {scalar_t__ sc_mediasize; int sc_provider; } ;


 int BIO_READ ;
 int MAXPHYS ;
 int MIN (int ,scalar_t__) ;
 int g_mirror_sync_done ;
 int g_reset_bio (struct bio*) ;

__attribute__((used)) static void
g_mirror_sync_reinit(const struct g_mirror_disk *disk, struct bio *bp,
    off_t offset)
{
 void *data;
 int idx;

 data = bp->bio_data;
 idx = (int)(uintptr_t)bp->bio_caller1;
 g_reset_bio(bp);

 bp->bio_cmd = BIO_READ;
 bp->bio_data = data;
 bp->bio_done = g_mirror_sync_done;
 bp->bio_from = disk->d_sync.ds_consumer;
 bp->bio_to = disk->d_softc->sc_provider;
 bp->bio_caller1 = (void *)(uintptr_t)idx;
 bp->bio_offset = offset;
 bp->bio_length = MIN(MAXPHYS,
     disk->d_softc->sc_mediasize - bp->bio_offset);
}
