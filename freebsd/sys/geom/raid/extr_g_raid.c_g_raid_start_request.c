
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid_volume {int v_tr; int v_inflight; int v_writes; int v_dirty; int v_locked; } ;
struct g_raid_softc {int sc_lock; } ;
struct bio {int bio_cflags; scalar_t__ bio_cmd; TYPE_2__* bio_to; } ;
struct TYPE_4__ {struct g_raid_volume* private; TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_raid_softc* softc; } ;


 scalar_t__ BIO_DELETE ;
 scalar_t__ BIO_WRITE ;
 int G_RAID_BIO_FLAG_SPECIAL ;
 int G_RAID_LOGREQ (int,struct bio*,char*) ;
 int G_RAID_TR_IOSTART (int ,struct bio*) ;
 int SX_LOCKED ;
 int bioq_insert_tail (int *,struct bio*) ;
 int g_raid_dirty (struct g_raid_volume*) ;
 scalar_t__ g_raid_is_in_locked_range (struct g_raid_volume*,struct bio*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
g_raid_start_request(struct bio *bp)
{
 struct g_raid_softc *sc;
 struct g_raid_volume *vol;

 sc = bp->bio_to->geom->softc;
 sx_assert(&sc->sc_lock, SX_LOCKED);
 vol = bp->bio_to->private;
 if (!(bp->bio_cflags & G_RAID_BIO_FLAG_SPECIAL) &&
     g_raid_is_in_locked_range(vol, bp)) {
  G_RAID_LOGREQ(3, bp, "Defer request.");
  bioq_insert_tail(&vol->v_locked, bp);
  return;
 }





 if (bp->bio_cmd == BIO_WRITE || bp->bio_cmd == BIO_DELETE) {
  if (!vol->v_dirty)
   g_raid_dirty(vol);
  vol->v_writes++;
 }






 bioq_insert_tail(&vol->v_inflight, bp);
 G_RAID_LOGREQ(4, bp, "Request started");
 G_RAID_TR_IOSTART(vol->v_tr, bp);
}
