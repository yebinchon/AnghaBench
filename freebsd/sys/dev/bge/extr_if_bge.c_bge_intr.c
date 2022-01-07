
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int bge_status_map; int bge_status_tag; } ;
struct TYPE_7__ {TYPE_2__* bge_status_block; } ;
struct bge_softc {scalar_t__ bge_asicrev; scalar_t__ bge_chipid; scalar_t__ bge_link_evt; TYPE_4__ bge_cdata; TYPE_3__ bge_ldata; int bge_ifp; } ;
typedef int if_t ;
struct TYPE_6__ {scalar_t__ bge_status; TYPE_1__* bge_idx; } ;
struct TYPE_5__ {int bge_tx_cons_idx; int bge_rx_prod_idx; } ;


 scalar_t__ BGE_ASICREV_BCM5700 ;
 scalar_t__ BGE_CHIPID_BCM5700_B2 ;
 int BGE_LOCK (struct bge_softc*) ;
 int BGE_MACSTAT_LINK_CHANGED ;
 int BGE_MAC_STS ;
 int BGE_MBX_IRQ0_LO ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct bge_softc*,int ) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int bge_link_upd (struct bge_softc*) ;
 int bge_rxeof (struct bge_softc*,int ,int) ;
 int bge_start_locked (int ) ;
 int bge_txeof (struct bge_softc*,int ) ;
 int bge_writembx (struct bge_softc*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_sendq_empty (int ) ;

__attribute__((used)) static void
bge_intr(void *xsc)
{
 struct bge_softc *sc;
 if_t ifp;
 uint32_t statusword;
 uint16_t rx_prod, tx_cons;

 sc = xsc;

 BGE_LOCK(sc);

 ifp = sc->bge_ifp;
 bge_writembx(sc, BGE_MBX_IRQ0_LO, 0);




 statusword = CSR_READ_4(sc, BGE_MAC_STS) & BGE_MACSTAT_LINK_CHANGED;


 bus_dmamap_sync(sc->bge_cdata.bge_status_tag,
     sc->bge_cdata.bge_status_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 rx_prod = sc->bge_ldata.bge_status_block->bge_idx[0].bge_rx_prod_idx;
 tx_cons = sc->bge_ldata.bge_status_block->bge_idx[0].bge_tx_cons_idx;
 sc->bge_ldata.bge_status_block->bge_status = 0;
 bus_dmamap_sync(sc->bge_cdata.bge_status_tag,
     sc->bge_cdata.bge_status_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 if ((sc->bge_asicrev == BGE_ASICREV_BCM5700 &&
     sc->bge_chipid != BGE_CHIPID_BCM5700_B2) ||
     statusword || sc->bge_link_evt)
  bge_link_upd(sc);

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {

  bge_rxeof(sc, rx_prod, 1);
 }

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {

  bge_txeof(sc, tx_cons);
 }

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING &&
     !if_sendq_empty(ifp))
  bge_start_locked(ifp);

 BGE_UNLOCK(sc);
}
