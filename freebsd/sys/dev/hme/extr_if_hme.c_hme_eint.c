
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct hme_softc {TYPE_1__* sc_ifp; int sc_dev; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int HME_MIFI_CFG ;
 int HME_MIFI_SM ;
 int HME_MIFI_STAT ;
 int HME_MIF_READ_4 (struct hme_softc*,int ) ;
 int HME_SEB_STAT_FATAL_ERRORS ;
 int HME_SEB_STAT_MIFIRQ ;
 int HME_WHINE (int ,char*,int) ;
 int IFF_DRV_RUNNING ;
 int device_printf (int ,char*,int ,int ,int ) ;
 int hme_init_locked (struct hme_softc*) ;

__attribute__((used)) static void
hme_eint(struct hme_softc *sc, u_int status)
{

 if ((status & HME_SEB_STAT_MIFIRQ) != 0) {
  device_printf(sc->sc_dev, "XXXlink status changed: "
      "cfg=%#x, stat=%#x, sm=%#x\n",
      HME_MIF_READ_4(sc, HME_MIFI_CFG),
      HME_MIF_READ_4(sc, HME_MIFI_STAT),
      HME_MIF_READ_4(sc, HME_MIFI_SM));
  return;
 }


 if ((status & HME_SEB_STAT_FATAL_ERRORS) != 0) {
  HME_WHINE(sc->sc_dev, "error signaled, status=%#x\n", status);
  sc->sc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  hme_init_locked(sc);
 }
}
