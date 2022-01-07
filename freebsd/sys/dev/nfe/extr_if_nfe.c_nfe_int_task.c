
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nfe_softc {scalar_t__ nfe_framesize; int nfe_int_task; int nfe_tq; int nfe_irq_status; int nfe_process_limit; int nfe_ifp; } ;
typedef int if_t ;


 int DPRINTF (struct nfe_softc*,char*) ;
 int DPRINTFN (struct nfe_softc*,int,char*,int) ;
 scalar_t__ ETHER_HDR_LEN ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 scalar_t__ MCLBYTES ;
 int NFE_IRQ_LINK ;
 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_PHY_STATUS ;
 scalar_t__ NFE_READ (struct nfe_softc*,int ) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_sendq_empty (int ) ;
 int nfe_disable_intr (struct nfe_softc*) ;
 int nfe_enable_intr (struct nfe_softc*) ;
 int nfe_jrxeof (struct nfe_softc*,int ,int *) ;
 int nfe_rxeof (struct nfe_softc*,int ,int *) ;
 int nfe_start_locked (int ) ;
 int nfe_txeof (struct nfe_softc*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
nfe_int_task(void *arg, int pending)
{
 struct nfe_softc *sc = arg;
 if_t ifp = sc->nfe_ifp;
 uint32_t r;
 int domore;

 NFE_LOCK(sc);

 if ((r = NFE_READ(sc, sc->nfe_irq_status)) == 0) {
  nfe_enable_intr(sc);
  NFE_UNLOCK(sc);
  return;
 }
 NFE_WRITE(sc, sc->nfe_irq_status, r);

 DPRINTFN(sc, 5, "nfe_intr: interrupt register %x\n", r);
 if (r & NFE_IRQ_LINK) {
  NFE_READ(sc, NFE_PHY_STATUS);
  NFE_WRITE(sc, NFE_PHY_STATUS, 0xf);
  DPRINTF(sc, "link state changed\n");
 }

 if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0) {
  NFE_UNLOCK(sc);
  nfe_disable_intr(sc);
  return;
 }

 domore = 0;

 if (sc->nfe_framesize > MCLBYTES - ETHER_HDR_LEN)
  domore = nfe_jrxeof(sc, sc->nfe_process_limit, ((void*)0));
 else
  domore = nfe_rxeof(sc, sc->nfe_process_limit, ((void*)0));

 nfe_txeof(sc);

 if (!if_sendq_empty(ifp))
  nfe_start_locked(ifp);

 NFE_UNLOCK(sc);

 if (domore || (NFE_READ(sc, sc->nfe_irq_status) != 0)) {
  taskqueue_enqueue(sc->nfe_tq, &sc->nfe_int_task);
  return;
 }


 nfe_enable_intr(sc);
}
