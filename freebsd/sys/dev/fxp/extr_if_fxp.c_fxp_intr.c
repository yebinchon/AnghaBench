
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fxp_softc {scalar_t__ suspended; int ifp; } ;
typedef int if_t ;


 int CSR_READ_1 (struct fxp_softc*,int ) ;
 int CSR_WRITE_1 (struct fxp_softc*,int ,int) ;
 int FXP_CSR_SCB_STATACK ;
 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int fxp_intr_body (struct fxp_softc*,int ,int,int) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;

__attribute__((used)) static void
fxp_intr(void *xsc)
{
 struct fxp_softc *sc = xsc;
 if_t ifp = sc->ifp;
 uint8_t statack;

 FXP_LOCK(sc);
 if (sc->suspended) {
  FXP_UNLOCK(sc);
  return;
 }







 while ((statack = CSR_READ_1(sc, FXP_CSR_SCB_STATACK)) != 0) {






  if (statack == 0xff) {
   FXP_UNLOCK(sc);
   return;
  }




  CSR_WRITE_1(sc, FXP_CSR_SCB_STATACK, statack);
  if ((if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0)
   fxp_intr_body(sc, ifp, statack, -1);
 }
 FXP_UNLOCK(sc);
}
