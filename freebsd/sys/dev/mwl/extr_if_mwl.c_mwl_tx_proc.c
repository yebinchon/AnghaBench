
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_softc {int sc_mh; int sc_snd; scalar_t__ sc_tx_timer; TYPE_1__* sc_txq; } ;
struct TYPE_2__ {int active; } ;


 int STAILQ_EMPTY (int *) ;
 int * mbufq_first (int *) ;
 int mwl_hal_txstart (int ,int ) ;
 int mwl_start (struct mwl_softc*) ;
 scalar_t__ mwl_tx_processq (struct mwl_softc*,TYPE_1__*) ;

__attribute__((used)) static void
mwl_tx_proc(void *arg, int npending)
{
 struct mwl_softc *sc = arg;
 int nreaped;




 nreaped = 0;
 if (!STAILQ_EMPTY(&sc->sc_txq[0].active))
  nreaped += mwl_tx_processq(sc, &sc->sc_txq[0]);
 if (!STAILQ_EMPTY(&sc->sc_txq[1].active))
  nreaped += mwl_tx_processq(sc, &sc->sc_txq[1]);
 if (!STAILQ_EMPTY(&sc->sc_txq[2].active))
  nreaped += mwl_tx_processq(sc, &sc->sc_txq[2]);
 if (!STAILQ_EMPTY(&sc->sc_txq[3].active))
  nreaped += mwl_tx_processq(sc, &sc->sc_txq[3]);

 if (nreaped != 0) {
  sc->sc_tx_timer = 0;
  if (mbufq_first(&sc->sc_snd) != ((void*)0)) {

   mwl_hal_txstart(sc->sc_mh, 0);
   mwl_start(sc);
  }
 }
}
