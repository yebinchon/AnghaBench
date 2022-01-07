
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ msk_rx_prod; int msk_rx_ring_map; int msk_rx_ring_tag; int msk_jumbo_rx_ring_map; int msk_jumbo_rx_ring_tag; } ;
struct msk_if_softc {int msk_flags; TYPE_2__ msk_cdata; int msk_rxq; int msk_softc; int msk_if_dev; TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_capenable; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 scalar_t__ CSR_READ_2 (int ,int ) ;
 int CSR_WRITE_2 (int ,int ,scalar_t__) ;
 int DELAY (int) ;
 int ENOBUFS ;
 int ETIMEDOUT ;
 int IFCAP_RXCSUM ;
 int MSK_FLAG_DESCV2 ;
 int PREF_UNIT_GET_IDX_REG ;
 int PREF_UNIT_PUT_IDX_REG ;
 int Y2_PREF_Q_ADDR (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ msk_jumbo_newbuf (struct msk_if_softc*,int ) ;
 scalar_t__ msk_newbuf (struct msk_if_softc*,int ) ;

__attribute__((used)) static int
msk_rx_fill(struct msk_if_softc *sc_if, int jumbo)
{
 uint16_t idx;
 int i;

 if ((sc_if->msk_flags & MSK_FLAG_DESCV2) == 0 &&
     (sc_if->msk_ifp->if_capenable & IFCAP_RXCSUM) != 0) {

  for (i = 100; i > 0; i--) {
   DELAY(100);
   idx = CSR_READ_2(sc_if->msk_softc,
       Y2_PREF_Q_ADDR(sc_if->msk_rxq,
       PREF_UNIT_GET_IDX_REG));
   if (idx != 0)
    break;
  }
  if (i == 0) {
   device_printf(sc_if->msk_if_dev,
       "prefetch unit stuck?\n");
   return (ETIMEDOUT);
  }





  if (jumbo > 0) {
   if (msk_jumbo_newbuf(sc_if, 0) != 0)
    return (ENOBUFS);
   bus_dmamap_sync(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
       sc_if->msk_cdata.msk_jumbo_rx_ring_map,
       BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  } else {
   if (msk_newbuf(sc_if, 0) != 0)
    return (ENOBUFS);
   bus_dmamap_sync(sc_if->msk_cdata.msk_rx_ring_tag,
       sc_if->msk_cdata.msk_rx_ring_map,
       BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  }
  sc_if->msk_cdata.msk_rx_prod = 0;
  CSR_WRITE_2(sc_if->msk_softc,
      Y2_PREF_Q_ADDR(sc_if->msk_rxq, PREF_UNIT_PUT_IDX_REG),
      sc_if->msk_cdata.msk_rx_prod);
 }
 return (0);
}
