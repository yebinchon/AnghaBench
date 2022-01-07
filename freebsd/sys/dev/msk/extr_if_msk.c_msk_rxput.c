
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msk_softc {int dummy; } ;
struct TYPE_2__ {int msk_rx_prod; int msk_rx_ring_map; int msk_rx_ring_tag; int msk_jumbo_rx_ring_map; int msk_jumbo_rx_ring_tag; } ;
struct msk_if_softc {scalar_t__ msk_framesize; TYPE_1__ msk_cdata; int msk_rxq; struct msk_softc* msk_softc; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int ) ;
 scalar_t__ MCLBYTES ;
 scalar_t__ MSK_RX_BUF_ALIGN ;
 int PREF_UNIT_PUT_IDX_REG ;
 int Y2_PREF_Q_ADDR (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;

__attribute__((used)) static __inline void
msk_rxput(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;

 sc = sc_if->msk_softc;
 if (sc_if->msk_framesize > (MCLBYTES - MSK_RX_BUF_ALIGN))
  bus_dmamap_sync(
      sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
      sc_if->msk_cdata.msk_jumbo_rx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 else
  bus_dmamap_sync(
      sc_if->msk_cdata.msk_rx_ring_tag,
      sc_if->msk_cdata.msk_rx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 CSR_WRITE_2(sc, Y2_PREF_Q_ADDR(sc_if->msk_rxq,
     PREF_UNIT_PUT_IDX_REG), sc_if->msk_cdata.msk_rx_prod);
}
