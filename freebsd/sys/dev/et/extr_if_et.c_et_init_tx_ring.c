
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct et_txstatus_data {int txsd_dmap; int txsd_dtag; int txsd_status; } ;
struct et_txdesc_ring {int tr_dmap; int tr_dtag; int tr_desc; } ;
struct et_txbuf_data {scalar_t__ tbd_used; scalar_t__ tbd_start_wrap; scalar_t__ tbd_start_index; } ;
struct et_softc {struct et_txstatus_data sc_tx_status; struct et_txbuf_data sc_tx_data; struct et_txdesc_ring sc_tx_ring; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ET_TX_RING_SIZE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int) ;

__attribute__((used)) static void
et_init_tx_ring(struct et_softc *sc)
{
 struct et_txdesc_ring *tx_ring;
 struct et_txbuf_data *tbd;
 struct et_txstatus_data *txsd;

 tx_ring = &sc->sc_tx_ring;
 bzero(tx_ring->tr_desc, ET_TX_RING_SIZE);
 bus_dmamap_sync(tx_ring->tr_dtag, tx_ring->tr_dmap,
     BUS_DMASYNC_PREWRITE);

 tbd = &sc->sc_tx_data;
 tbd->tbd_start_index = 0;
 tbd->tbd_start_wrap = 0;
 tbd->tbd_used = 0;

 txsd = &sc->sc_tx_status;
 bzero(txsd->txsd_status, sizeof(uint32_t));
 bus_dmamap_sync(txsd->txsd_dtag, txsd->txsd_dmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
