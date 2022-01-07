
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_8__ {struct xl_chain_onefrag* xl_rx_chain; struct xl_chain_onefrag* xl_rx_head; } ;
struct TYPE_7__ {int xl_rx_dmaaddr; int xl_rx_dmamap; int xl_rx_tag; } ;
struct xl_softc {scalar_t__ rxcycles; TYPE_4__ xl_cdata; TYPE_3__ xl_ldata; int xl_mtag; int xl_dev; struct ifnet* xl_ifp; } ;
struct xl_chain_onefrag {TYPE_1__* xl_ptr; struct mbuf* xl_mbuf; int xl_map; struct xl_chain_onefrag* xl_next; } ;
struct TYPE_6__ {int len; int csum_flags; int csum_data; struct ifnet* rcvif; } ;
struct mbuf {int m_len; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_capenable; int if_drv_flags; int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_5__ {scalar_t__ xl_status; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_READ_4 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct xl_softc*,int ,int ) ;
 int CSUM_DATA_VALID ;
 int CSUM_IP_CHECKED ;
 int CSUM_IP_VALID ;
 int CSUM_PSEUDO_HDR ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFF_DRV_RUNNING ;
 int XL_CMD_UP_STALL ;
 int XL_CMD_UP_UNSTALL ;
 int XL_COMMAND ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_MAX_FRAMELEN ;
 int XL_PKTSTAT_UP_STALLED ;
 int XL_RXSTAT_IPCKERR ;
 int XL_RXSTAT_IPCKOK ;
 int XL_RXSTAT_LENMASK ;
 int XL_RXSTAT_OVERSIZE ;
 int XL_RXSTAT_TCPCKERR ;
 int XL_RXSTAT_TCPCOK ;
 int XL_RXSTAT_UDPCKERR ;
 int XL_RXSTAT_UDPCKOK ;
 int XL_RXSTAT_UP_CMPLT ;
 int XL_RXSTAT_UP_ERROR ;
 int XL_UNLOCK (struct xl_softc*) ;
 int XL_UPLIST_PTR ;
 int XL_UPLIST_STATUS ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int le32toh (scalar_t__) ;
 int stub1 (struct ifnet*,struct mbuf*) ;
 scalar_t__ xl_newbuf (struct xl_softc*,struct xl_chain_onefrag*) ;
 int xl_wait (struct xl_softc*) ;

__attribute__((used)) static int
xl_rxeof(struct xl_softc *sc)
{
 struct mbuf *m;
 struct ifnet *ifp = sc->xl_ifp;
 struct xl_chain_onefrag *cur_rx;
 int total_len;
 int rx_npkts = 0;
 u_int32_t rxstat;

 XL_LOCK_ASSERT(sc);
again:
 bus_dmamap_sync(sc->xl_ldata.xl_rx_tag, sc->xl_ldata.xl_rx_dmamap,
     BUS_DMASYNC_POSTREAD);
 while ((rxstat = le32toh(sc->xl_cdata.xl_rx_head->xl_ptr->xl_status))) {







  cur_rx = sc->xl_cdata.xl_rx_head;
  sc->xl_cdata.xl_rx_head = cur_rx->xl_next;
  total_len = rxstat & XL_RXSTAT_LENMASK;
  rx_npkts++;







  if (total_len > XL_MAX_FRAMELEN)
   rxstat |= (XL_RXSTAT_UP_ERROR|XL_RXSTAT_OVERSIZE);







  if (rxstat & XL_RXSTAT_UP_ERROR) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   cur_rx->xl_ptr->xl_status = 0;
   bus_dmamap_sync(sc->xl_ldata.xl_rx_tag,
       sc->xl_ldata.xl_rx_dmamap, BUS_DMASYNC_PREWRITE);
   continue;
  }






  if (!(rxstat & XL_RXSTAT_UP_CMPLT)) {
   device_printf(sc->xl_dev,
       "bad receive status -- packet dropped\n");
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   cur_rx->xl_ptr->xl_status = 0;
   bus_dmamap_sync(sc->xl_ldata.xl_rx_tag,
       sc->xl_ldata.xl_rx_dmamap, BUS_DMASYNC_PREWRITE);
   continue;
  }


  bus_dmamap_sync(sc->xl_mtag, cur_rx->xl_map,
      BUS_DMASYNC_POSTREAD);
  m = cur_rx->xl_mbuf;
  if (xl_newbuf(sc, cur_rx)) {
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   cur_rx->xl_ptr->xl_status = 0;
   bus_dmamap_sync(sc->xl_ldata.xl_rx_tag,
       sc->xl_ldata.xl_rx_dmamap, BUS_DMASYNC_PREWRITE);
   continue;
  }
  bus_dmamap_sync(sc->xl_ldata.xl_rx_tag,
      sc->xl_ldata.xl_rx_dmamap, BUS_DMASYNC_PREWRITE);

  if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
  m->m_pkthdr.rcvif = ifp;
  m->m_pkthdr.len = m->m_len = total_len;

  if (ifp->if_capenable & IFCAP_RXCSUM) {

   if (rxstat & XL_RXSTAT_IPCKOK)
    m->m_pkthdr.csum_flags |= CSUM_IP_CHECKED;
   if (!(rxstat & XL_RXSTAT_IPCKERR))
    m->m_pkthdr.csum_flags |= CSUM_IP_VALID;
   if ((rxstat & XL_RXSTAT_TCPCOK &&
        !(rxstat & XL_RXSTAT_TCPCKERR)) ||
       (rxstat & XL_RXSTAT_UDPCKOK &&
        !(rxstat & XL_RXSTAT_UDPCKERR))) {
    m->m_pkthdr.csum_flags |=
     CSUM_DATA_VALID|CSUM_PSEUDO_HDR;
    m->m_pkthdr.csum_data = 0xffff;
   }
  }

  XL_UNLOCK(sc);
  (*ifp->if_input)(ifp, m);
  XL_LOCK(sc);






  if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
   return (rx_npkts);
 }
 if (CSR_READ_4(sc, XL_UPLIST_PTR) == 0 ||
  CSR_READ_4(sc, XL_UPLIST_STATUS) & XL_PKTSTAT_UP_STALLED) {
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_UP_STALL);
  xl_wait(sc);
  CSR_WRITE_4(sc, XL_UPLIST_PTR, sc->xl_ldata.xl_rx_dmaaddr);
  sc->xl_cdata.xl_rx_head = &sc->xl_cdata.xl_rx_chain[0];
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_UP_UNSTALL);
  goto again;
 }
 return (rx_npkts);
}
