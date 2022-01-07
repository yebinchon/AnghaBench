
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct xl_softc {scalar_t__ xl_type; struct ifnet* xl_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int XL_CMD_INTR_ACK ;
 int XL_COMMAND ;
 int XL_INTRS ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_STATUS ;
 int XL_STAT_ADFAIL ;
 int XL_STAT_DOWN_COMPLETE ;
 int XL_STAT_STATSOFLOW ;
 int XL_STAT_TX_COMPLETE ;
 int XL_STAT_UP_COMPLETE ;
 scalar_t__ XL_TYPE_905B ;
 int XL_UNLOCK (struct xl_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int xl_init_locked (struct xl_softc*) ;
 scalar_t__ xl_rx_resync (struct xl_softc*) ;
 scalar_t__ xl_rxeof (struct xl_softc*) ;
 int xl_start_90xB_locked (struct ifnet*) ;
 int xl_start_locked (struct ifnet*) ;
 int xl_stats_update (struct xl_softc*) ;
 int xl_txeoc (struct xl_softc*) ;
 int xl_txeof (struct xl_softc*) ;
 int xl_txeof_90xB (struct xl_softc*) ;

__attribute__((used)) static void
xl_intr(void *arg)
{
 struct xl_softc *sc = arg;
 struct ifnet *ifp = sc->xl_ifp;
 u_int16_t status;

 XL_LOCK(sc);
 for (;;) {
  status = CSR_READ_2(sc, XL_STATUS);
  if ((status & XL_INTRS) == 0 || status == 0xFFFF)
   break;
  CSR_WRITE_2(sc, XL_COMMAND,
      XL_CMD_INTR_ACK|(status & XL_INTRS));
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;

  if (status & XL_STAT_UP_COMPLETE) {
   if (xl_rxeof(sc) == 0) {
    while (xl_rx_resync(sc))
     xl_rxeof(sc);
   }
  }

  if (status & XL_STAT_DOWN_COMPLETE) {
   if (sc->xl_type == XL_TYPE_905B)
    xl_txeof_90xB(sc);
   else
    xl_txeof(sc);
  }

  if (status & XL_STAT_TX_COMPLETE) {
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   xl_txeoc(sc);
  }

  if (status & XL_STAT_ADFAIL) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   xl_init_locked(sc);
   break;
  }

  if (status & XL_STAT_STATSOFLOW)
   xl_stats_update(sc);
 }

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd) &&
     ifp->if_drv_flags & IFF_DRV_RUNNING) {
  if (sc->xl_type == XL_TYPE_905B)
   xl_start_90xB_locked(ifp);
  else
   xl_start_locked(ifp);
 }

 XL_UNLOCK(sc);
}
