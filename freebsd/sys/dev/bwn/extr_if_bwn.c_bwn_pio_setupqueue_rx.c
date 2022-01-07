
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_softc {int sc_dev; } ;
struct bwn_pio_rxqueue {scalar_t__ prq_base; int prq_rev; struct bwn_mac* prq_mac; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 scalar_t__ BWN_PIO_RXQOFFSET (struct bwn_mac*) ;
 int bhnd_get_hwrev (int ) ;
 int bwn_dma_rxdirectfifo (struct bwn_mac*,int,int) ;
 scalar_t__ bwn_pio_idx2base (struct bwn_mac*,int) ;

__attribute__((used)) static void
bwn_pio_setupqueue_rx(struct bwn_mac *mac, struct bwn_pio_rxqueue *prq,
    int index)
{
 struct bwn_softc *sc = mac->mac_sc;

 prq->prq_mac = mac;
 prq->prq_rev = bhnd_get_hwrev(sc->sc_dev);
 prq->prq_base = bwn_pio_idx2base(mac, index) + BWN_PIO_RXQOFFSET(mac);
 bwn_dma_rxdirectfifo(mac, index, 1);
}
