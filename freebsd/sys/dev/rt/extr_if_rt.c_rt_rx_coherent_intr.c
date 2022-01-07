
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rt_softc {int rx_ring_count; int * rx_calc_idx; int * rx_max_cnt; TYPE_1__* rx_ring; int * rx_base_ptr; int pdma_glo_cfg; int rx_coherent_interrupts; } ;
struct TYPE_2__ {int desc_phys_addr; } ;


 int FE_RX_DMA_EN ;
 int RT_DEBUG_INTR ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_READ (struct rt_softc*,int ) ;
 int RT_SOFTC_RX_RING_DATA_COUNT ;
 int RT_WRITE (struct rt_softc*,int ,int) ;
 int rt_reset_rx_ring (struct rt_softc*,TYPE_1__*) ;
 int rt_txrx_enable (struct rt_softc*) ;

__attribute__((used)) static void
rt_rx_coherent_intr(struct rt_softc *sc)
{
 uint32_t tmp;
 int i;

 RT_DPRINTF(sc, RT_DEBUG_INTR, "Rx coherent interrupt\n");

 sc->rx_coherent_interrupts++;


 tmp = RT_READ(sc, sc->pdma_glo_cfg);
 tmp &= ~(FE_RX_DMA_EN);
 RT_WRITE(sc, sc->pdma_glo_cfg, tmp);


 for (i = 0; i < sc->rx_ring_count; i++)
  rt_reset_rx_ring(sc, &sc->rx_ring[i]);

 for (i = 0; i < sc->rx_ring_count; i++) {
  RT_WRITE(sc, sc->rx_base_ptr[i],
   sc->rx_ring[i].desc_phys_addr);
  RT_WRITE(sc, sc->rx_max_cnt[i],
   RT_SOFTC_RX_RING_DATA_COUNT);
  RT_WRITE(sc, sc->rx_calc_idx[i],
   RT_SOFTC_RX_RING_DATA_COUNT - 1);
 }

 rt_txrx_enable(sc);
}
