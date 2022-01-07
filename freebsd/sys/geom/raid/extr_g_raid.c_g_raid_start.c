
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid_softc {int sc_queue_mtx; int sc_queue; } ;
struct bio {int bio_cmd; int bio_attribute; TYPE_2__* bio_to; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_raid_softc* softc; } ;







 int EOPNOTSUPP ;
 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,struct g_raid_softc*) ;
 int G_RAID_LOGREQ (int,struct bio*,char*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int dumping ;
 int g_io_deliver (struct bio*,int ) ;
 int g_raid_candelete (struct g_raid_softc*,struct bio*) ;
 int g_raid_kerneldump (struct g_raid_softc*,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strcmp (int ,char*) ;
 int wakeup (struct g_raid_softc*) ;

__attribute__((used)) static void
g_raid_start(struct bio *bp)
{
 struct g_raid_softc *sc;

 sc = bp->bio_to->geom->softc;







 G_RAID_LOGREQ(3, bp, "Request received.");

 switch (bp->bio_cmd) {
 case 129:
 case 128:
 case 132:
 case 131:
  break;
 case 130:
  if (!strcmp(bp->bio_attribute, "GEOM::candelete"))
   g_raid_candelete(sc, bp);
  else if (!strcmp(bp->bio_attribute, "GEOM::kerneldump"))
   g_raid_kerneldump(sc, bp);
  else
   g_io_deliver(bp, EOPNOTSUPP);
  return;
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
 mtx_lock(&sc->sc_queue_mtx);
 bioq_insert_tail(&sc->sc_queue, bp);
 mtx_unlock(&sc->sc_queue_mtx);
 if (!dumping) {
  G_RAID_DEBUG1(4, sc, "Waking up %p.", sc);
  wakeup(sc);
 }
}
