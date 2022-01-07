
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_softc {int (* sc_free_tx_ring ) (struct bwi_softc*,int) ;int (* sc_free_rx_ring ) (struct bwi_softc*) ;int (* sc_free_txstats ) (struct bwi_softc*) ;} ;
struct bwi_mac {int mac_flags; int mac_regwin; struct bwi_softc* mac_sc; } ;


 int BWI_BBP_ATTEN ;
 int BWI_BBP_ATTEN_MAGIC ;
 int BWI_MAC_F_HAS_TXSTATS ;
 int BWI_MAC_F_INITED ;
 int BWI_TX_NRING ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int ) ;
 int bwi_mac_gpio_fini (struct bwi_mac*) ;
 int bwi_regwin_disable (struct bwi_softc*,int *,int ) ;
 int bwi_rf_off (struct bwi_mac*) ;
 int stub1 (struct bwi_softc*) ;
 int stub2 (struct bwi_softc*) ;
 int stub3 (struct bwi_softc*,int) ;

void
bwi_mac_shutdown(struct bwi_mac *mac)
{
 struct bwi_softc *sc = mac->mac_sc;
 int i;

 if (mac->mac_flags & BWI_MAC_F_HAS_TXSTATS)
  sc->sc_free_txstats(sc);

 sc->sc_free_rx_ring(sc);

 for (i = 0; i < BWI_TX_NRING; ++i)
  sc->sc_free_tx_ring(sc, i);

 bwi_rf_off(mac);



 bwi_mac_gpio_fini(mac);

 bwi_rf_off(mac);
 CSR_WRITE_2(sc, BWI_BBP_ATTEN, BWI_BBP_ATTEN_MAGIC);
 bwi_regwin_disable(sc, &mac->mac_regwin, 0);

 mac->mac_flags &= ~BWI_MAC_F_INITED;
}
