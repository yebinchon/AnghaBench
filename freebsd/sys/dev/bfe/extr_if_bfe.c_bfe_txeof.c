
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct bfe_tx_data {int * bfe_mbuf; int bfe_map; } ;
struct bfe_softc {int bfe_tx_cons; scalar_t__ bfe_tx_cnt; scalar_t__ bfe_watchdog_timer; int bfe_txmbuf_tag; struct bfe_tx_data* bfe_tx_ring; int bfe_tx_map; int bfe_tx_tag; struct ifnet* bfe_ifp; } ;
struct bfe_desc {int dummy; } ;


 int BFE_DMATX_STAT ;
 int BFE_INC (int,int ) ;
 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int BFE_STAT_CDMASK ;
 int BFE_TX_LIST_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct bfe_softc*,int ) ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bfe_txeof(struct bfe_softc *sc)
{
 struct bfe_tx_data *r;
 struct ifnet *ifp;
 int i, chipidx;

 BFE_LOCK_ASSERT(sc);

 ifp = sc->bfe_ifp;

 chipidx = CSR_READ_4(sc, BFE_DMATX_STAT) & BFE_STAT_CDMASK;
 chipidx /= sizeof(struct bfe_desc);

 i = sc->bfe_tx_cons;
 if (i == chipidx)
  return;
 bus_dmamap_sync(sc->bfe_tx_tag, sc->bfe_tx_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 for (; i != chipidx; BFE_INC(i, BFE_TX_LIST_CNT)) {
  r = &sc->bfe_tx_ring[i];
  sc->bfe_tx_cnt--;
  if (r->bfe_mbuf == ((void*)0))
   continue;
  bus_dmamap_sync(sc->bfe_txmbuf_tag, r->bfe_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->bfe_txmbuf_tag, r->bfe_map);

  m_freem(r->bfe_mbuf);
  r->bfe_mbuf = ((void*)0);
 }

 if (i != sc->bfe_tx_cons) {

  sc->bfe_tx_cons = i;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 }

 if (sc->bfe_tx_cnt == 0)
  sc->bfe_watchdog_timer = 0;
}
