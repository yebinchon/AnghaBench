
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {scalar_t__ sc_ratectl; scalar_t__ sc_tx_n_active; int sc_tx_timer; scalar_t__ qfullmsk; } ;
struct rtwn_usb_softc {int uc_tx_pending; int uc_tx_active; int uc_tx_inactive; struct rtwn_softc uc_sc; } ;
struct rtwn_data {int * m; int * ni; } ;


 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 scalar_t__ RTWN_RATECTL_NET80211 ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct rtwn_data*,int ) ;
 int ieee80211_tx_complete (int *,int *,int) ;
 int next ;

__attribute__((used)) static void
rtwn_usb_txeof(struct rtwn_usb_softc *uc, struct rtwn_data *data, int status)
{
 struct rtwn_softc *sc = &uc->uc_sc;

 RTWN_ASSERT_LOCKED(sc);

 if (data->ni != ((void*)0))
  ieee80211_tx_complete(data->ni, data->m, status);

 if (sc->sc_ratectl != RTWN_RATECTL_NET80211)
  if (sc->sc_tx_n_active > 0)
   sc->sc_tx_n_active--;

 data->ni = ((void*)0);
 data->m = ((void*)0);

 STAILQ_INSERT_TAIL(&uc->uc_tx_inactive, data, next);
 sc->qfullmsk = 0;

 if (STAILQ_EMPTY(&uc->uc_tx_active) && STAILQ_EMPTY(&uc->uc_tx_pending))
  sc->sc_tx_timer = 0;
 else
  sc->sc_tx_timer = 5;

}
