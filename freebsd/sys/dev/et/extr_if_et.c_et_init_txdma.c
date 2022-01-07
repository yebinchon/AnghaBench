
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_txstatus_data {int txsd_paddr; } ;
struct et_txdesc_ring {scalar_t__ tr_ready_wrap; scalar_t__ tr_ready_index; int tr_paddr; } ;
struct et_softc {struct et_txstatus_data sc_tx_status; struct et_txdesc_ring sc_tx_ring; int ifp; } ;


 int CSR_WRITE_4 (struct et_softc*,int ,scalar_t__) ;
 scalar_t__ ET_ADDR_HI (int ) ;
 scalar_t__ ET_ADDR_LO (int ) ;
 scalar_t__ ET_TX_NDESC ;
 int ET_TX_READY_POS ;
 int ET_TX_RING_CNT ;
 int ET_TX_RING_HI ;
 int ET_TX_RING_LO ;
 int ET_TX_STATUS_HI ;
 int ET_TX_STATUS_LO ;
 int et_stop_txdma (struct et_softc*) ;
 int if_printf (int ,char*) ;

__attribute__((used)) static int
et_init_txdma(struct et_softc *sc)
{
 struct et_txdesc_ring *tx_ring;
 struct et_txstatus_data *txsd;
 int error;

 error = et_stop_txdma(sc);
 if (error) {
  if_printf(sc->ifp, "can't init TX DMA engine\n");
  return (error);
 }




 tx_ring = &sc->sc_tx_ring;
 CSR_WRITE_4(sc, ET_TX_RING_HI, ET_ADDR_HI(tx_ring->tr_paddr));
 CSR_WRITE_4(sc, ET_TX_RING_LO, ET_ADDR_LO(tx_ring->tr_paddr));
 CSR_WRITE_4(sc, ET_TX_RING_CNT, ET_TX_NDESC - 1);




 txsd = &sc->sc_tx_status;
 CSR_WRITE_4(sc, ET_TX_STATUS_HI, ET_ADDR_HI(txsd->txsd_paddr));
 CSR_WRITE_4(sc, ET_TX_STATUS_LO, ET_ADDR_LO(txsd->txsd_paddr));

 CSR_WRITE_4(sc, ET_TX_READY_POS, 0);


 tx_ring->tr_ready_index = 0;
 tx_ring->tr_ready_wrap = 0;

 return (0);
}
