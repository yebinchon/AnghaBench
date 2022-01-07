
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct sis_txdesc {int * tx_m; int tx_dmamap; } ;
struct sis_softc {size_t sis_tx_cons; size_t sis_tx_prod; scalar_t__ sis_tx_cnt; scalar_t__ sis_watchdog_timer; int sis_tx_tag; struct sis_txdesc* sis_txdesc; struct sis_desc* sis_tx_list; int sis_tx_list_map; int sis_tx_list_tag; struct ifnet* sis_ifp; } ;
struct sis_desc {int sis_cmdsts; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 size_t SIS_CMDSTS_OWN ;
 size_t SIS_CMDSTS_PKT_OK ;
 int SIS_INC (size_t,int ) ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 size_t SIS_TXSTAT_COLLCNT ;
 size_t SIS_TXSTAT_EXCESSCOLLS ;
 size_t SIS_TXSTAT_OUTOFWINCOLL ;
 int SIS_TX_LIST_CNT ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 size_t le32toh (int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
sis_txeof(struct sis_softc *sc)
{
 struct ifnet *ifp;
 struct sis_desc *cur_tx;
 struct sis_txdesc *txd;
 uint32_t cons, txstat;

 SIS_LOCK_ASSERT(sc);

 cons = sc->sis_tx_cons;
 if (cons == sc->sis_tx_prod)
  return;

 ifp = sc->sis_ifp;
 bus_dmamap_sync(sc->sis_tx_list_tag, sc->sis_tx_list_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);





 for (; cons != sc->sis_tx_prod; SIS_INC(cons, SIS_TX_LIST_CNT)) {
  cur_tx = &sc->sis_tx_list[cons];
  txstat = le32toh(cur_tx->sis_cmdsts);
  if ((txstat & SIS_CMDSTS_OWN) != 0)
   break;
  txd = &sc->sis_txdesc[cons];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->sis_tx_tag, txd->tx_dmamap,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->sis_tx_tag, txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
   if ((txstat & SIS_CMDSTS_PKT_OK) != 0) {
    if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
    if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
        (txstat & SIS_TXSTAT_COLLCNT) >> 16);
   } else {
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
    if (txstat & SIS_TXSTAT_EXCESSCOLLS)
     if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
    if (txstat & SIS_TXSTAT_OUTOFWINCOLL)
     if_inc_counter(ifp, IFCOUNTER_COLLISIONS, 1);
   }
  }
  sc->sis_tx_cnt--;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 }
 sc->sis_tx_cons = cons;
 if (sc->sis_tx_cnt == 0)
  sc->sis_watchdog_timer = 0;
}
