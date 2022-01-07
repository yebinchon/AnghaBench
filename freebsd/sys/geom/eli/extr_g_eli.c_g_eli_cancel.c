
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_eli_softc {int sc_queue; int sc_queue_mtx; } ;
struct bio {scalar_t__ bio_pflags; } ;


 int ENXIO ;
 scalar_t__ G_ELI_NEW_BIO ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 struct bio* bioq_takefirst (int *) ;
 int g_io_deliver (struct bio*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
g_eli_cancel(struct g_eli_softc *sc)
{
 struct bio *bp;

 mtx_assert(&sc->sc_queue_mtx, MA_OWNED);

 while ((bp = bioq_takefirst(&sc->sc_queue)) != ((void*)0)) {
  KASSERT(bp->bio_pflags == G_ELI_NEW_BIO,
      ("Not new bio when canceling (bp=%p).", bp));
  g_io_deliver(bp, ENXIO);
 }
}
