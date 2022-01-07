
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int bge_status_map; int bge_status_tag; } ;
struct TYPE_7__ {TYPE_2__* bge_status_block; } ;
struct bge_softc {int bge_flags; scalar_t__ bge_rx_saved_considx; TYPE_4__ bge_cdata; TYPE_3__ bge_ldata; int bge_ifp; } ;
typedef int if_t ;
struct TYPE_6__ {int bge_status; int bge_status_tag; TYPE_1__* bge_idx; } ;
struct TYPE_5__ {scalar_t__ bge_rx_prod_idx; scalar_t__ bge_tx_cons_idx; } ;


 int BGE_FLAG_TAGGED_STATUS ;
 int BGE_LOCK (struct bge_softc*) ;
 int BGE_MBX_IRQ0_LO ;
 int BGE_STATFLAG_LINKSTATE_CHANGED ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFF_DRV_RUNNING ;
 int bge_link_upd (struct bge_softc*) ;
 int bge_rxeof (struct bge_softc*,scalar_t__,int ) ;
 int bge_start_locked (int ) ;
 int bge_txeof (struct bge_softc*,scalar_t__) ;
 int bge_writembx (struct bge_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_getdrvflags (int ) ;
 int if_sendq_empty (int ) ;

__attribute__((used)) static void
bge_intr_task(void *arg, int pending)
{
 struct bge_softc *sc;
 if_t ifp;
 uint32_t status, status_tag;
 uint16_t rx_prod, tx_cons;

 sc = (struct bge_softc *)arg;
 ifp = sc->bge_ifp;

 BGE_LOCK(sc);
 if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0) {
  BGE_UNLOCK(sc);
  return;
 }


 bus_dmamap_sync(sc->bge_cdata.bge_status_tag,
     sc->bge_cdata.bge_status_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);


 rx_prod = sc->bge_ldata.bge_status_block->bge_idx[0].bge_rx_prod_idx;
 tx_cons = sc->bge_ldata.bge_status_block->bge_idx[0].bge_tx_cons_idx;
 status = sc->bge_ldata.bge_status_block->bge_status;
 status_tag = sc->bge_ldata.bge_status_block->bge_status_tag << 24;

 sc->bge_ldata.bge_status_block->bge_status = 0;
 bus_dmamap_sync(sc->bge_cdata.bge_status_tag,
     sc->bge_cdata.bge_status_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 if ((sc->bge_flags & BGE_FLAG_TAGGED_STATUS) == 0)
  status_tag = 0;

 if ((status & BGE_STATFLAG_LINKSTATE_CHANGED) != 0)
  bge_link_upd(sc);


 bge_writembx(sc, BGE_MBX_IRQ0_LO, status_tag);

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING &&
     sc->bge_rx_saved_considx != rx_prod) {

  BGE_UNLOCK(sc);
  bge_rxeof(sc, rx_prod, 0);
  BGE_LOCK(sc);
 }
 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING) {

  bge_txeof(sc, tx_cons);
  if (!if_sendq_empty(ifp))
   bge_start_locked(ifp);
 }
 BGE_UNLOCK(sc);
}
