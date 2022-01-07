
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_eli_softc {int sc_flags; TYPE_2__* sc_geom; int sc_queue_mtx; int sc_queue; } ;
struct g_consumer {TYPE_3__* provider; } ;
struct bio {int bio_cmd; TYPE_3__* bio_to; int bio_done; int bio_pflags; struct bio* bio_driver1; } ;
struct TYPE_6__ {int name; int error; TYPE_1__* geom; } ;
struct TYPE_5__ {int consumer; } ;
struct TYPE_4__ {struct g_eli_softc* softc; } ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int G_ELI_FLAG_AUTH ;
 int G_ELI_FLAG_NODELETE ;
 int G_ELI_LOGREQ (int,struct bio*,char*) ;
 int G_ELI_NEW_BIO ;
 int KASSERT (int ,char*) ;
 struct g_consumer* LIST_FIRST (int *) ;
 int bioq_insert_tail (int *,struct bio*) ;
 struct bio* g_clone_bio (struct bio*) ;
 int g_eli_crypto_read (struct g_eli_softc*,struct bio*,int ) ;
 int g_eli_getattr_done ;
 int g_io_deliver (struct bio*,int ) ;
 int g_io_request (struct bio*,struct g_consumer*) ;
 int g_std_done ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_eli_softc*) ;

__attribute__((used)) static void
g_eli_start(struct bio *bp)
{
 struct g_eli_softc *sc;
 struct g_consumer *cp;
 struct bio *cbp;

 sc = bp->bio_to->geom->softc;
 KASSERT(sc != ((void*)0),
     ("Provider's error should be set (error=%d)(device=%s).",
     bp->bio_to->error, bp->bio_to->name));
 G_ELI_LOGREQ(2, bp, "Request received.");

 switch (bp->bio_cmd) {
 case 130:
 case 129:
 case 131:
 case 132:
 case 128:
  break;
 case 133:
  if (!(sc->sc_flags & G_ELI_FLAG_NODELETE))
   break;
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
 cbp = g_clone_bio(bp);
 if (cbp == ((void*)0)) {
  g_io_deliver(bp, ENOMEM);
  return;
 }
 bp->bio_driver1 = cbp;
 bp->bio_pflags = G_ELI_NEW_BIO;
 switch (bp->bio_cmd) {
 case 130:
  if (!(sc->sc_flags & G_ELI_FLAG_AUTH)) {
   g_eli_crypto_read(sc, bp, 0);
   break;
  }

 case 129:
  mtx_lock(&sc->sc_queue_mtx);
  bioq_insert_tail(&sc->sc_queue, bp);
  mtx_unlock(&sc->sc_queue_mtx);
  wakeup(sc);
  break;
 case 131:
 case 132:
 case 133:
 case 128:
  if (bp->bio_cmd == 131)
   cbp->bio_done = g_eli_getattr_done;
  else
   cbp->bio_done = g_std_done;
  cp = LIST_FIRST(&sc->sc_geom->consumer);
  cbp->bio_to = cp->provider;
  G_ELI_LOGREQ(2, cbp, "Sending request.");
  g_io_request(cbp, cp);
  break;
 }
}
