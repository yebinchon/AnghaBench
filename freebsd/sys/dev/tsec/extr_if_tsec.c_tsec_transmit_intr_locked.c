
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct tsec_softc {size_t tx_idx_tail; size_t tx_idx_head; scalar_t__ tsec_watchdog; int tsec_tx_dmap; int tsec_tx_dtag; int tsec_tx_mtag; struct tsec_bufmap* tx_bufmap; struct tsec_desc* tsec_tx_vaddr; struct ifnet* tsec_ifp; } ;
struct tsec_desc {int flags; } ;
struct tsec_bufmap {int * mbuf; int map; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_MON_TLCL ;
 int TSEC_REG_MON_TMCL ;
 int TSEC_REG_MON_TNCL ;
 int TSEC_REG_MON_TSCL ;
 int TSEC_REG_MON_TXCL ;
 int TSEC_TRANSMIT_LOCK_ASSERT (struct tsec_softc*) ;
 int TSEC_TXBD_R ;
 int TSEC_TX_NUM_DESC ;
 int TSEC_WRITE (struct tsec_softc*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (int *) ;
 int tsec_start_locked (struct ifnet*) ;

__attribute__((used)) static void
tsec_transmit_intr_locked(struct tsec_softc *sc)
{
 struct ifnet *ifp;
 uint32_t tx_idx;

 TSEC_TRANSMIT_LOCK_ASSERT(sc);

 ifp = sc->tsec_ifp;


 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, TSEC_READ(sc, TSEC_REG_MON_TNCL));


 TSEC_WRITE(sc, TSEC_REG_MON_TSCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TMCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TLCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TXCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TNCL, 0);

 bus_dmamap_sync(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 tx_idx = sc->tx_idx_tail;
 while (tx_idx != sc->tx_idx_head) {
  struct tsec_desc *tx_desc;
  struct tsec_bufmap *tx_bufmap;

  tx_desc = &sc->tsec_tx_vaddr[tx_idx];
  if (tx_desc->flags & TSEC_TXBD_R) {
   break;
  }

  tx_bufmap = &sc->tx_bufmap[tx_idx];
  tx_idx = (tx_idx + 1) & (TSEC_TX_NUM_DESC - 1);
  if (tx_bufmap->mbuf == ((void*)0))
   continue;




  bus_dmamap_sync(sc->tsec_tx_mtag, tx_bufmap->map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->tsec_tx_mtag, tx_bufmap->map);
  m_freem(tx_bufmap->mbuf);
  tx_bufmap->mbuf = ((void*)0);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
 }
 sc->tx_idx_tail = tx_idx;
 bus_dmamap_sync(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 tsec_start_locked(ifp);

 if (sc->tx_idx_tail == sc->tx_idx_head)
  sc->tsec_watchdog = 0;
}
