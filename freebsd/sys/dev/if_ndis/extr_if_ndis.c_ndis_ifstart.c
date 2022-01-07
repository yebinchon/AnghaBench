
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct ndis_softc {size_t ndis_txidx; scalar_t__ ndis_txpending; int ndis_tx_timer; TYPE_6__* ndis_chars; int ndis_80211; int * ndis_tmaps; int ndis_ttag; scalar_t__ ndis_sc; TYPE_8__** ndis_txarray; int ndis_txpool; int ndis_link; } ;
struct TYPE_15__ {int csum_flags; } ;
struct mbuf {TYPE_3__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_snd; struct ndis_softc* if_softc; } ;
struct TYPE_16__ {int ntc_txflags; } ;
struct TYPE_19__ {TYPE_4__ u; } ;
typedef TYPE_7__ ndis_tcpip_csum ;
struct TYPE_17__ {int npp_flags; } ;
struct TYPE_14__ {int ** npe_info; } ;
struct TYPE_13__ {int npo_status; } ;
struct TYPE_20__ {size_t np_txidx; TYPE_5__ np_private; TYPE_2__ np_ext; int np_sclist; TYPE_1__ np_oob; struct mbuf* np_m0; } ;
typedef TYPE_8__ ndis_packet ;
struct TYPE_18__ {int * nmc_sendmulti_func; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int IFCAP_TXCSUM ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_PREPEND (int *,struct mbuf*) ;
 int NDIS_INC (struct ndis_softc*) ;
 int NDIS_LOCK (struct ndis_softc*) ;
 int NDIS_PROTOCOL_ID_TCP_IP ;
 int NDIS_STATUS_PENDING ;
 int NDIS_STATUS_SUCCESS ;
 int NDIS_TXCSUM_DO_IP ;
 int NDIS_TXCSUM_DO_IPV4 ;
 int NDIS_TXCSUM_DO_TCP ;
 int NDIS_TXCSUM_DO_UDP ;
 int NDIS_UNLOCK (struct ndis_softc*) ;
 int NdisAllocatePacket (int*,TYPE_8__**,int ) ;
 int bus_dmamap_load_mbuf (int ,int ,struct mbuf*,int ,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ndis_map_sclist ;
 scalar_t__ ndis_mtop (struct mbuf*,TYPE_8__**) ;
 size_t ndis_sclist_info ;
 int ndis_send_packet (struct ndis_softc*,TYPE_8__*) ;
 int ndis_send_packets (struct ndis_softc*,TYPE_8__**,int) ;
 size_t ndis_tcpipcsum_info ;

__attribute__((used)) static void
ndis_ifstart(struct ifnet *ifp)
{
 struct ndis_softc *sc;
 struct mbuf *m = ((void*)0);
 ndis_packet **p0 = ((void*)0), *p = ((void*)0);
 ndis_tcpip_csum *csum;
 int pcnt = 0, status;

 sc = ifp->if_softc;

 NDIS_LOCK(sc);
 if (!sc->ndis_link || ifp->if_drv_flags & IFF_DRV_OACTIVE) {
  NDIS_UNLOCK(sc);
  return;
 }

 p0 = &sc->ndis_txarray[sc->ndis_txidx];

 while(sc->ndis_txpending) {
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;

  NdisAllocatePacket(&status,
      &sc->ndis_txarray[sc->ndis_txidx], sc->ndis_txpool);

  if (status != NDIS_STATUS_SUCCESS)
   break;

  if (ndis_mtop(m, &sc->ndis_txarray[sc->ndis_txidx])) {
   IFQ_DRV_PREPEND(&ifp->if_snd, m);
   NDIS_UNLOCK(sc);
   return;
  }






  p = sc->ndis_txarray[sc->ndis_txidx];
  p->np_txidx = sc->ndis_txidx;
  p->np_m0 = m;
  p->np_oob.npo_status = NDIS_STATUS_PENDING;




  if (sc->ndis_sc) {
   bus_dmamap_load_mbuf(sc->ndis_ttag,
       sc->ndis_tmaps[sc->ndis_txidx], m,
       ndis_map_sclist, &p->np_sclist, BUS_DMA_NOWAIT);
   bus_dmamap_sync(sc->ndis_ttag,
       sc->ndis_tmaps[sc->ndis_txidx],
       BUS_DMASYNC_PREREAD);
   p->np_ext.npe_info[ndis_sclist_info] = &p->np_sclist;
  }



  if (ifp->if_capenable & IFCAP_TXCSUM &&
      m->m_pkthdr.csum_flags) {
   csum = (ndis_tcpip_csum *)
    &p->np_ext.npe_info[ndis_tcpipcsum_info];
   csum->u.ntc_txflags = NDIS_TXCSUM_DO_IPV4;
   if (m->m_pkthdr.csum_flags & CSUM_IP)
    csum->u.ntc_txflags |= NDIS_TXCSUM_DO_IP;
   if (m->m_pkthdr.csum_flags & CSUM_TCP)
    csum->u.ntc_txflags |= NDIS_TXCSUM_DO_TCP;
   if (m->m_pkthdr.csum_flags & CSUM_UDP)
    csum->u.ntc_txflags |= NDIS_TXCSUM_DO_UDP;
   p->np_private.npp_flags = NDIS_PROTOCOL_ID_TCP_IP;
  }

  NDIS_INC(sc);
  sc->ndis_txpending--;

  pcnt++;





  if (!sc->ndis_80211)
   BPF_MTAP(ifp, m);
  if (sc->ndis_txidx == 0)
   break;
 }

 if (pcnt == 0) {
  NDIS_UNLOCK(sc);
  return;
 }

 if (sc->ndis_txpending == 0)
  ifp->if_drv_flags |= IFF_DRV_OACTIVE;




 sc->ndis_tx_timer = 5;

 NDIS_UNLOCK(sc);







 if (sc->ndis_chars->nmc_sendmulti_func != ((void*)0))
  ndis_send_packets(sc, p0, pcnt);
 else
  ndis_send_packet(sc, p);

 return;
}
