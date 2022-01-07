
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffec_softc {size_t rx_idx; int rxdesc_map; int rxdesc_tag; struct ffec_hwdesc* rxdesc_ring; int dev; } ;
struct ffec_hwdesc {int flags_len; int buf_paddr; } ;
typedef int boolean_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int FEC_RDAR_RDAR ;
 int FEC_RDAR_REG ;
 int FEC_RXDESC_EMPTY ;
 int FEC_RXDESC_ERROR_BITS ;
 int FEC_RXDESC_L ;
 int FEC_RXDESC_LEN_MASK ;
 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;
 int WR4 (struct ffec_softc*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int ffec_rxfinish_onebuf (struct ffec_softc*,int) ;
 int ffec_setup_rxdesc (struct ffec_softc*,size_t,int ) ;
 size_t next_rxidx (struct ffec_softc*,size_t) ;

__attribute__((used)) static void
ffec_rxfinish_locked(struct ffec_softc *sc)
{
 struct ffec_hwdesc *desc;
 int len;
 boolean_t produced_empty_buffer;

 FFEC_ASSERT_LOCKED(sc);


 bus_dmamap_sync(sc->rxdesc_tag, sc->rxdesc_map, BUS_DMASYNC_PREREAD);
 bus_dmamap_sync(sc->rxdesc_tag, sc->rxdesc_map, BUS_DMASYNC_POSTREAD);
 produced_empty_buffer = 0;
 for (;;) {
  desc = &sc->rxdesc_ring[sc->rx_idx];
  if (desc->flags_len & FEC_RXDESC_EMPTY)
   break;
  produced_empty_buffer = 1;
  len = (desc->flags_len & FEC_RXDESC_LEN_MASK);
  if (len < 64) {



   ffec_setup_rxdesc(sc, sc->rx_idx,
       sc->rxdesc_ring[sc->rx_idx].buf_paddr);
  } else if ((desc->flags_len & FEC_RXDESC_L) == 0) {
   device_printf(sc->dev,
       "fec_rxfinish: received frame without LAST bit set");
   ffec_setup_rxdesc(sc, sc->rx_idx,
       sc->rxdesc_ring[sc->rx_idx].buf_paddr);
  } else if (desc->flags_len & FEC_RXDESC_ERROR_BITS) {







   ffec_setup_rxdesc(sc, sc->rx_idx,
       sc->rxdesc_ring[sc->rx_idx].buf_paddr);
  } else {



   ffec_rxfinish_onebuf(sc, len);
  }
  sc->rx_idx = next_rxidx(sc, sc->rx_idx);
 }

 if (produced_empty_buffer) {
  bus_dmamap_sync(sc->rxdesc_tag, sc->rxdesc_map, BUS_DMASYNC_PREWRITE);
  WR4(sc, FEC_RDAR_REG, FEC_RDAR_RDAR);
  bus_dmamap_sync(sc->rxdesc_tag, sc->rxdesc_map, BUS_DMASYNC_POSTWRITE);
 }
}
