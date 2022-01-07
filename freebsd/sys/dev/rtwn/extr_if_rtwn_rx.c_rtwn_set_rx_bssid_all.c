
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int rcr; } ;


 int R92C_RCR_CBSSID_BCN ;
 int rtwn_rxfilter_set (struct rtwn_softc*) ;

void
rtwn_set_rx_bssid_all(struct rtwn_softc *sc, int enable)
{

 if (enable)
  sc->rcr &= ~R92C_RCR_CBSSID_BCN;
 else
  sc->rcr |= R92C_RCR_CBSSID_BCN;
 rtwn_rxfilter_set(sc);
}
