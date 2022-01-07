
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_2__ {scalar_t__ xl_tx_cnt; int * xl_tx_head; } ;
struct xl_softc {scalar_t__ xl_wdog_timer; scalar_t__ xl_type; int xl_dev; TYPE_1__ xl_cdata; struct ifnet* xl_ifp; } ;
struct ifnet {int if_snd; int if_drv_flags; } ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int EJUSTRETURN ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_MEDIASTAT_CARRIER ;
 int XL_SEL_WIN (int) ;
 scalar_t__ XL_TYPE_905B ;
 int XL_W4_MEDIA_STATUS ;
 int device_printf (int ,char*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int xl_init_locked (struct xl_softc*) ;
 int xl_rxeof (struct xl_softc*) ;
 int xl_start_90xB_locked (struct ifnet*) ;
 int xl_start_locked (struct ifnet*) ;
 int xl_txeoc (struct xl_softc*) ;
 int xl_txeof (struct xl_softc*) ;
 int xl_txeof_90xB (struct xl_softc*) ;

__attribute__((used)) static int
xl_watchdog(struct xl_softc *sc)
{
 struct ifnet *ifp = sc->xl_ifp;
 u_int16_t status = 0;
 int misintr;

 XL_LOCK_ASSERT(sc);

 if (sc->xl_wdog_timer == 0 || --sc->xl_wdog_timer != 0)
  return (0);

 xl_rxeof(sc);
 xl_txeoc(sc);
 misintr = 0;
 if (sc->xl_type == XL_TYPE_905B) {
  xl_txeof_90xB(sc);
  if (sc->xl_cdata.xl_tx_cnt == 0)
   misintr++;
 } else {
  xl_txeof(sc);
  if (sc->xl_cdata.xl_tx_head == ((void*)0))
   misintr++;
 }
 if (misintr != 0) {
  device_printf(sc->xl_dev,
      "watchdog timeout (missed Tx interrupts) -- recovering\n");
  return (0);
 }

 if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
 XL_SEL_WIN(4);
 status = CSR_READ_2(sc, XL_W4_MEDIA_STATUS);
 device_printf(sc->xl_dev, "watchdog timeout\n");

 if (status & XL_MEDIASTAT_CARRIER)
  device_printf(sc->xl_dev,
      "no carrier - transceiver cable problem?\n");

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 xl_init_locked(sc);

 if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd)) {
  if (sc->xl_type == XL_TYPE_905B)
   xl_start_90xB_locked(ifp);
  else
   xl_start_locked(ifp);
 }

 return (EJUSTRETURN);
}
