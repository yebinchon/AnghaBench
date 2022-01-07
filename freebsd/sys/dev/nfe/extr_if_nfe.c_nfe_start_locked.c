
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_desc_map; int tx_desc_tag; } ;
struct nfe_softc {scalar_t__ nfe_link; int rxtxctl; int nfe_watchdog_timer; TYPE_1__ txq; } ;
struct mbuf {int dummy; } ;
typedef int if_t ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_RXTX_CTL ;
 int NFE_RXTX_KICKTX ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 struct mbuf* if_dequeue (int ) ;
 int if_etherbpfmtap (int ,struct mbuf*) ;
 int if_getdrvflags (int ) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int if_sendq_empty (int ) ;
 int if_sendq_prepend (int ,struct mbuf*) ;
 int if_setdrvflagbits (int ,int,int ) ;
 scalar_t__ nfe_encap (struct nfe_softc*,struct mbuf**) ;

__attribute__((used)) static void
nfe_start_locked(if_t ifp)
{
 struct nfe_softc *sc = if_getsoftc(ifp);
 struct mbuf *m0;
 int enq = 0;

 NFE_LOCK_ASSERT(sc);

 if ((if_getdrvflags(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING || sc->nfe_link == 0)
  return;

 while (!if_sendq_empty(ifp)) {
  m0 = if_dequeue(ifp);

  if (m0 == ((void*)0))
   break;

  if (nfe_encap(sc, &m0) != 0) {
   if (m0 == ((void*)0))
    break;
   if_sendq_prepend(ifp, m0);
   if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
   break;
  }
  enq++;
  if_etherbpfmtap(ifp, m0);
 }

 if (enq > 0) {
  bus_dmamap_sync(sc->txq.tx_desc_tag, sc->txq.tx_desc_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);


  NFE_WRITE(sc, NFE_RXTX_CTL, NFE_RXTX_KICKTX | sc->rxtxctl);




  sc->nfe_watchdog_timer = 5;
 }
}
