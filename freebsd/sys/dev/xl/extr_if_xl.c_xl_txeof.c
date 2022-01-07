
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct xl_chain* xl_tx_head; int * xl_tx_tail; struct xl_chain* xl_tx_free; } ;
struct xl_softc {TYPE_1__ xl_cdata; scalar_t__ xl_wdog_timer; int xl_mtag; struct ifnet* xl_ifp; } ;
struct xl_chain {int xl_phys; struct xl_chain* xl_next; int * xl_mbuf; int xl_map; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct xl_softc*,int ,int ) ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int XL_CMD_DOWN_UNSTALL ;
 int XL_COMMAND ;
 int XL_DMACTL ;
 int XL_DMACTL_DOWN_STALLED ;
 int XL_DOWNLIST_PTR ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
xl_txeof(struct xl_softc *sc)
{
 struct xl_chain *cur_tx;
 struct ifnet *ifp = sc->xl_ifp;

 XL_LOCK_ASSERT(sc);
 while (sc->xl_cdata.xl_tx_head != ((void*)0)) {
  cur_tx = sc->xl_cdata.xl_tx_head;

  if (CSR_READ_4(sc, XL_DOWNLIST_PTR))
   break;

  sc->xl_cdata.xl_tx_head = cur_tx->xl_next;
  bus_dmamap_sync(sc->xl_mtag, cur_tx->xl_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->xl_mtag, cur_tx->xl_map);
  m_freem(cur_tx->xl_mbuf);
  cur_tx->xl_mbuf = ((void*)0);
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  cur_tx->xl_next = sc->xl_cdata.xl_tx_free;
  sc->xl_cdata.xl_tx_free = cur_tx;
 }

 if (sc->xl_cdata.xl_tx_head == ((void*)0)) {
  sc->xl_wdog_timer = 0;
  sc->xl_cdata.xl_tx_tail = ((void*)0);
 } else {
  if (CSR_READ_4(sc, XL_DMACTL) & XL_DMACTL_DOWN_STALLED ||
   !CSR_READ_4(sc, XL_DOWNLIST_PTR)) {
   CSR_WRITE_4(sc, XL_DOWNLIST_PTR,
    sc->xl_cdata.xl_tx_head->xl_phys);
   CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_DOWN_UNSTALL);
  }
 }
}
