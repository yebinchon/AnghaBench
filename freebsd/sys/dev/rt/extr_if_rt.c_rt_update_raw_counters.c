
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int rx_fifo_overflows; int rx_phy_err; int rx_long_err; int rx_short_err; int rx_crc_err; int rx_packets; int rx_bytes; int tx_collision; int tx_skip; int tx_packets; int tx_bytes; } ;


 scalar_t__ CNTR_BASE ;
 scalar_t__ GDMA_RX_CSUM_ERCNT0 ;
 scalar_t__ GDMA_RX_FERCNT0 ;
 scalar_t__ GDMA_RX_GBCNT0 ;
 scalar_t__ GDMA_RX_GPCNT0 ;
 scalar_t__ GDMA_RX_LONG_ERCNT0 ;
 scalar_t__ GDMA_RX_OERCNT0 ;
 scalar_t__ GDMA_RX_SHORT_ERCNT0 ;
 scalar_t__ GDMA_TX_COLCNT0 ;
 scalar_t__ GDMA_TX_GBCNT0 ;
 scalar_t__ GDMA_TX_GPCNT0 ;
 scalar_t__ GDMA_TX_SKIPCNT0 ;
 scalar_t__ RT_READ (struct rt_softc*,scalar_t__) ;

__attribute__((used)) static void
rt_update_raw_counters(struct rt_softc *sc)
{

 sc->tx_bytes += RT_READ(sc, CNTR_BASE + GDMA_TX_GBCNT0);
 sc->tx_packets += RT_READ(sc, CNTR_BASE + GDMA_TX_GPCNT0);
 sc->tx_skip += RT_READ(sc, CNTR_BASE + GDMA_TX_SKIPCNT0);
 sc->tx_collision+= RT_READ(sc, CNTR_BASE + GDMA_TX_COLCNT0);

 sc->rx_bytes += RT_READ(sc, CNTR_BASE + GDMA_RX_GBCNT0);
 sc->rx_packets += RT_READ(sc, CNTR_BASE + GDMA_RX_GPCNT0);
 sc->rx_crc_err += RT_READ(sc, CNTR_BASE + GDMA_RX_CSUM_ERCNT0);
 sc->rx_short_err+= RT_READ(sc, CNTR_BASE + GDMA_RX_SHORT_ERCNT0);
 sc->rx_long_err += RT_READ(sc, CNTR_BASE + GDMA_RX_LONG_ERCNT0);
 sc->rx_phy_err += RT_READ(sc, CNTR_BASE + GDMA_RX_FERCNT0);
 sc->rx_fifo_overflows+= RT_READ(sc, CNTR_BASE + GDMA_RX_OERCNT0);
}
