
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct g_raid_volume {int v_provider; struct g_raid_softc* v_softc; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_softc {int dummy; } ;
struct bio {size_t bio_length; int bio_flags; scalar_t__ bio_error; int bio_to; void* bio_data; int bio_offset; int * bio_attribute; int bio_done; int bio_cmd; } ;
typedef int off_t ;


 int BIO_DONE ;
 int BIO_WRITE ;
 int DELAY (int) ;
 int EIO ;
 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*) ;
 int g_raid_poll (struct g_raid_softc*) ;
 int g_raid_start (struct bio*) ;
 int g_raid_tr_kerneldump_common_done ;
 int g_reset_bio (struct bio*) ;

int
g_raid_tr_kerneldump_common(struct g_raid_tr_object *tr,
    void *virtual, vm_offset_t physical, off_t offset, size_t length)
{
 struct g_raid_softc *sc;
 struct g_raid_volume *vol;
 struct bio bp;

 vol = tr->tro_volume;
 sc = vol->v_softc;

 g_reset_bio(&bp);
 bp.bio_cmd = BIO_WRITE;
 bp.bio_done = g_raid_tr_kerneldump_common_done;
 bp.bio_attribute = ((void*)0);
 bp.bio_offset = offset;
 bp.bio_length = length;
 bp.bio_data = virtual;
 bp.bio_to = vol->v_provider;

 g_raid_start(&bp);
 while (!(bp.bio_flags & BIO_DONE)) {
  G_RAID_DEBUG1(4, sc, "Poll...");
  g_raid_poll(sc);
  DELAY(10);
 }

 return (bp.bio_error != 0 ? EIO : 0);
}
