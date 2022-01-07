
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rt_softc {int * tx_ctx_idx; int * tx_max_cnt; TYPE_1__* tx_ring; int * tx_base_ptr; int pdma_glo_cfg; int tx_coherent_interrupts; } ;
struct TYPE_2__ {int desc_phys_addr; } ;


 int FE_TX_DMA_EN ;
 int FE_TX_WB_DDONE ;
 int RT_DEBUG_INTR ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_READ (struct rt_softc*,int ) ;
 int RT_SOFTC_TX_RING_COUNT ;
 int RT_SOFTC_TX_RING_DESC_COUNT ;
 int RT_WRITE (struct rt_softc*,int ,int) ;
 int rt_reset_tx_ring (struct rt_softc*,TYPE_1__*) ;
 int rt_txrx_enable (struct rt_softc*) ;

__attribute__((used)) static void
rt_tx_coherent_intr(struct rt_softc *sc)
{
 uint32_t tmp;
 int i;

 RT_DPRINTF(sc, RT_DEBUG_INTR, "Tx coherent interrupt\n");

 sc->tx_coherent_interrupts++;


 tmp = RT_READ(sc, sc->pdma_glo_cfg);
 tmp &= ~(FE_TX_WB_DDONE | FE_TX_DMA_EN);
 RT_WRITE(sc, sc->pdma_glo_cfg, tmp);

 for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++)
  rt_reset_tx_ring(sc, &sc->tx_ring[i]);

 for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++) {
  RT_WRITE(sc, sc->tx_base_ptr[i],
   sc->tx_ring[i].desc_phys_addr);
  RT_WRITE(sc, sc->tx_max_cnt[i],
   RT_SOFTC_TX_RING_DESC_COUNT);
  RT_WRITE(sc, sc->tx_ctx_idx[i], 0);
 }

 rt_txrx_enable(sc);
}
