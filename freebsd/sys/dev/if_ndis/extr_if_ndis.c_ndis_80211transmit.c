
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ndis_softc {scalar_t__ ndis_txpending; size_t ndis_txidx; int ndis_tx_timer; TYPE_3__* ndis_chars; int * ndis_tmaps; int ndis_ttag; scalar_t__ ndis_sc; TYPE_4__** ndis_txarray; int ndis_txpool; int ndis_running; int ndis_link; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct ndis_softc* ic_softc; } ;
struct TYPE_10__ {int ** npe_info; } ;
struct TYPE_9__ {int npo_status; } ;
struct TYPE_12__ {size_t np_txidx; int np_sclist; TYPE_2__ np_ext; TYPE_1__ np_oob; struct mbuf* np_m0; } ;
typedef TYPE_4__ ndis_packet ;
struct TYPE_11__ {int * nmc_sendmulti_func; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int ENOBUFS ;
 int ENXIO ;
 int NDIS_INC (struct ndis_softc*) ;
 int NDIS_LOCK (struct ndis_softc*) ;
 int NDIS_STATUS_PENDING ;
 int NDIS_STATUS_SUCCESS ;
 int NDIS_UNLOCK (struct ndis_softc*) ;
 int NdisAllocatePacket (int*,TYPE_4__**,int ) ;
 int bus_dmamap_load_mbuf (int ,int ,struct mbuf*,int ,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int ndis_map_sclist ;
 scalar_t__ ndis_mtop (struct mbuf*,TYPE_4__**) ;
 size_t ndis_sclist_info ;
 int ndis_send_packet (struct ndis_softc*,TYPE_4__*) ;
 int ndis_send_packets (struct ndis_softc*,TYPE_4__**,int) ;

__attribute__((used)) static int
ndis_80211transmit(struct ieee80211com *ic, struct mbuf *m)
{
 struct ndis_softc *sc = ic->ic_softc;
 ndis_packet **p0 = ((void*)0), *p = ((void*)0);
 int status;

 NDIS_LOCK(sc);
 if (!sc->ndis_link || !sc->ndis_running) {
  NDIS_UNLOCK(sc);
  return (ENXIO);
 }

 if (sc->ndis_txpending == 0) {
  NDIS_UNLOCK(sc);
  return (ENOBUFS);
 }

 p0 = &sc->ndis_txarray[sc->ndis_txidx];

 NdisAllocatePacket(&status,
     &sc->ndis_txarray[sc->ndis_txidx], sc->ndis_txpool);

 if (status != NDIS_STATUS_SUCCESS) {
  NDIS_UNLOCK(sc);
  return (ENOBUFS);
 }

 if (ndis_mtop(m, &sc->ndis_txarray[sc->ndis_txidx])) {
  NDIS_UNLOCK(sc);
  return (ENOBUFS);
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

 NDIS_INC(sc);
 sc->ndis_txpending--;




 sc->ndis_tx_timer = 5;
 NDIS_UNLOCK(sc);







 if (sc->ndis_chars->nmc_sendmulti_func != ((void*)0))
  ndis_send_packets(sc, p0, 1);
 else
  ndis_send_packet(sc, p);

 return (0);
}
