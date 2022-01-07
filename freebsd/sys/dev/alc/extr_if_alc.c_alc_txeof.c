
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct alc_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_6__ {scalar_t__ alc_tx_cnt; size_t alc_tx_cons; int alc_cmb_map; int alc_cmb_tag; int alc_tx_tag; struct alc_txdesc* alc_txdesc; int alc_tx_ring_map; int alc_tx_ring_tag; } ;
struct TYPE_5__ {TYPE_1__* alc_cmb; } ;
struct alc_softc {int alc_flags; scalar_t__ alc_watchdog_timer; TYPE_3__ alc_cdata; TYPE_2__ alc_rdata; struct ifnet* alc_ifp; } ;
struct TYPE_4__ {size_t cons; } ;


 int ALC_DESC_INC (size_t,int ) ;
 int ALC_FLAG_AR816X_FAMILY ;
 int ALC_FLAG_CMB_BUG ;
 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_MBOX_TD_CONS_IDX ;
 int ALC_MBOX_TD_PRI0_CONS_IDX ;
 int ALC_TX_RING_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 size_t CSR_READ_2 (struct alc_softc*,int ) ;
 size_t CSR_READ_4 (struct alc_softc*,int ) ;
 int IFF_DRV_OACTIVE ;
 size_t MBOX_TD_CONS_LO_IDX_MASK ;
 size_t MBOX_TD_CONS_LO_IDX_SHIFT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
alc_txeof(struct alc_softc *sc)
{
 struct ifnet *ifp;
 struct alc_txdesc *txd;
 uint32_t cons, prod;
 int prog;

 ALC_LOCK_ASSERT(sc);

 ifp = sc->alc_ifp;

 if (sc->alc_cdata.alc_tx_cnt == 0)
  return;
 bus_dmamap_sync(sc->alc_cdata.alc_tx_ring_tag,
     sc->alc_cdata.alc_tx_ring_map, BUS_DMASYNC_POSTWRITE);
 if ((sc->alc_flags & ALC_FLAG_CMB_BUG) == 0) {
  bus_dmamap_sync(sc->alc_cdata.alc_cmb_tag,
      sc->alc_cdata.alc_cmb_map, BUS_DMASYNC_POSTREAD);
  prod = sc->alc_rdata.alc_cmb->cons;
 } else {
  if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
   prod = CSR_READ_2(sc, ALC_MBOX_TD_PRI0_CONS_IDX);
  else {
   prod = CSR_READ_4(sc, ALC_MBOX_TD_CONS_IDX);

   prod = (prod & MBOX_TD_CONS_LO_IDX_MASK) >>
       MBOX_TD_CONS_LO_IDX_SHIFT;
  }
 }
 cons = sc->alc_cdata.alc_tx_cons;




 for (prog = 0; cons != prod; prog++,
     ALC_DESC_INC(cons, ALC_TX_RING_CNT)) {
  if (sc->alc_cdata.alc_tx_cnt <= 0)
   break;
  prog++;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  sc->alc_cdata.alc_tx_cnt--;
  txd = &sc->alc_cdata.alc_txdesc[cons];
  if (txd->tx_m != ((void*)0)) {

   bus_dmamap_sync(sc->alc_cdata.alc_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->alc_cdata.alc_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
 }

 if ((sc->alc_flags & ALC_FLAG_CMB_BUG) == 0)
  bus_dmamap_sync(sc->alc_cdata.alc_cmb_tag,
      sc->alc_cdata.alc_cmb_map, BUS_DMASYNC_PREREAD);
 sc->alc_cdata.alc_tx_cons = cons;




 if (sc->alc_cdata.alc_tx_cnt == 0)
  sc->alc_watchdog_timer = 0;
}
