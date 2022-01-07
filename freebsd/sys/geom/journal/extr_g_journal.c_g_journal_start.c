
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_journal_softc {int sc_mtx; int sc_regular_queue; } ;
struct bio {int bio_cmd; TYPE_2__* bio_to; int bio_completed; int bio_length; int bio_data; int bio_attribute; } ;
struct TYPE_4__ {int name; TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;






 int EOPNOTSUPP ;
 int GJ_LOGREQ (int,struct bio*,char*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strcmp (int ,char*) ;
 int strlcpy (int ,int ,int ) ;
 int strlen (int ) ;
 int wakeup (struct g_journal_softc*) ;

__attribute__((used)) static void
g_journal_start(struct bio *bp)
{
 struct g_journal_softc *sc;

 sc = bp->bio_to->geom->softc;
 GJ_LOGREQ(3, bp, "Request received.");

 switch (bp->bio_cmd) {
 case 129:
 case 128:
  mtx_lock(&sc->sc_mtx);
  bioq_insert_tail(&sc->sc_regular_queue, bp);
  wakeup(sc);
  mtx_unlock(&sc->sc_mtx);
  return;
 case 130:
  if (strcmp(bp->bio_attribute, "GJOURNAL::provider") == 0) {
   strlcpy(bp->bio_data, bp->bio_to->name, bp->bio_length);
   bp->bio_completed = strlen(bp->bio_to->name) + 1;
   g_io_deliver(bp, 0);
   return;
  }

 case 131:
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
}
