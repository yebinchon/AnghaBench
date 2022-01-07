
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct fxp_softc {scalar_t__ tx_queued; int watchdog_timer; int cbl_map; int cbl_tag; } ;
typedef int if_t ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int FXP_LOCK_ASSERT (struct fxp_softc*,int ) ;
 int FXP_NTXCB ;
 scalar_t__ FXP_NTXCB_HIWAT ;
 int FXP_SCB_COMMAND_CU_RESUME ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int bus_dmamap_sync (int ,int ,int) ;
 scalar_t__ fxp_encap (struct fxp_softc*,struct mbuf**) ;
 int fxp_scb_cmd (struct fxp_softc*,int ) ;
 int fxp_scb_wait (struct fxp_softc*) ;
 int fxp_txeof (struct fxp_softc*) ;
 int if_bpfmtap (int ,struct mbuf*) ;
 struct mbuf* if_dequeue (int ) ;
 int if_getdrvflags (int ) ;
 struct fxp_softc* if_getsoftc (int ) ;
 int if_sendq_empty (int ) ;
 int if_sendq_prepend (int ,struct mbuf*) ;
 int if_setdrvflagbits (int ,int,int ) ;

__attribute__((used)) static void
fxp_start_body(if_t ifp)
{
 struct fxp_softc *sc = if_getsoftc(ifp);
 struct mbuf *mb_head;
 int txqueued;

 FXP_LOCK_ASSERT(sc, MA_OWNED);

 if ((if_getdrvflags(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING)
  return;

 if (sc->tx_queued > FXP_NTXCB_HIWAT)
  fxp_txeof(sc);






 txqueued = 0;
 while (!if_sendq_empty(ifp) && sc->tx_queued < FXP_NTXCB - 1) {




  mb_head = if_dequeue(ifp);
  if (mb_head == ((void*)0))
   break;

  if (fxp_encap(sc, &mb_head)) {
   if (mb_head == ((void*)0))
    break;
   if_sendq_prepend(ifp, mb_head);
   if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, 0);
  }
  txqueued++;



  if_bpfmtap(ifp, mb_head);
 }





 if (txqueued > 0) {
  bus_dmamap_sync(sc->cbl_tag, sc->cbl_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
  fxp_scb_wait(sc);
  fxp_scb_cmd(sc, FXP_SCB_COMMAND_CU_RESUME);




  sc->watchdog_timer = 5;
 }
}
