
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_tx_radiotap_header {int wt_ihdr; } ;
struct rtwn_rx_radiotap_header {int wr_ihdr; } ;
struct rtwn_softc {int sc_ic; struct rtwn_tx_radiotap_header sc_txtap; struct rtwn_rx_radiotap_header sc_rxtap; } ;


 int RTWN_RX_RADIOTAP_PRESENT ;
 int RTWN_TX_RADIOTAP_PRESENT ;
 int ieee80211_radiotap_attach (int *,int *,int,int ,int *,int,int ) ;

__attribute__((used)) static void
rtwn_radiotap_attach(struct rtwn_softc *sc)
{
 struct rtwn_rx_radiotap_header *rxtap = &sc->sc_rxtap;
 struct rtwn_tx_radiotap_header *txtap = &sc->sc_txtap;

 ieee80211_radiotap_attach(&sc->sc_ic,
     &txtap->wt_ihdr, sizeof(*txtap), RTWN_TX_RADIOTAP_PRESENT,
     &rxtap->wr_ihdr, sizeof(*rxtap), RTWN_RX_RADIOTAP_PRESENT);
}
