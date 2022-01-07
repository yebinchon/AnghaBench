
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int xl_tx_cons; int xl_tx_prod; scalar_t__ xl_tx_cnt; struct xl_chain* xl_tx_chain; } ;
struct TYPE_4__ {int xl_tx_dmamap; int xl_tx_tag; } ;
struct xl_softc {TYPE_3__ xl_cdata; scalar_t__ xl_wdog_timer; int xl_mtag; TYPE_1__ xl_ldata; struct ifnet* xl_ifp; } ;
struct xl_chain {int * xl_mbuf; int xl_map; TYPE_2__* xl_ptr; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_5__ {int xl_status; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int XL_INC (int,int ) ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_TXSTAT_DL_COMPLETE ;
 int XL_TX_LIST_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
xl_txeof_90xB(struct xl_softc *sc)
{
 struct xl_chain *cur_tx = ((void*)0);
 struct ifnet *ifp = sc->xl_ifp;
 int idx;

 XL_LOCK_ASSERT(sc);

 bus_dmamap_sync(sc->xl_ldata.xl_tx_tag, sc->xl_ldata.xl_tx_dmamap,
     BUS_DMASYNC_POSTREAD);
 idx = sc->xl_cdata.xl_tx_cons;
 while (idx != sc->xl_cdata.xl_tx_prod) {
  cur_tx = &sc->xl_cdata.xl_tx_chain[idx];

  if (!(le32toh(cur_tx->xl_ptr->xl_status) &
        XL_TXSTAT_DL_COMPLETE))
   break;

  if (cur_tx->xl_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->xl_mtag, cur_tx->xl_map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->xl_mtag, cur_tx->xl_map);
   m_freem(cur_tx->xl_mbuf);
   cur_tx->xl_mbuf = ((void*)0);
  }

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);

  sc->xl_cdata.xl_tx_cnt--;
  XL_INC(idx, XL_TX_LIST_CNT);
 }

 if (sc->xl_cdata.xl_tx_cnt == 0)
  sc->xl_wdog_timer = 0;
 sc->xl_cdata.xl_tx_cons = idx;

 if (cur_tx != ((void*)0))
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
