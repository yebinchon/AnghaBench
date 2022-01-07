
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {scalar_t__ wol; int rx_ring_size; int tx_ring_size; } ;


 int RX_BD_USABLE ;
 int TX_BD_USABLE ;
 int bxe_get_tunable_params (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_get_params(struct bxe_softc *sc)
{

    bxe_get_tunable_params(sc);


    sc->tx_ring_size = TX_BD_USABLE;
    sc->rx_ring_size = RX_BD_USABLE;


    sc->wol = 0;
}
