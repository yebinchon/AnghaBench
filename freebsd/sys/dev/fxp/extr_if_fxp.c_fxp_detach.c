
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int * ih; int * fxp_res; int dev; int ifp; int stat_ch; } ;
typedef int device_t ;


 int CSR_WRITE_1 (struct fxp_softc*,int ,int ) ;
 int FXP_CSR_SCB_INTRCNTL ;
 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_SCB_INTR_DISABLE ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int IFCAP_POLLING ;
 int bus_teardown_intr (int ,int ,int *) ;
 int callout_drain (int *) ;
 struct fxp_softc* device_get_softc (int ) ;
 int ether_ifdetach (int ) ;
 int ether_poll_deregister (int ) ;
 int fxp_release (struct fxp_softc*) ;
 int fxp_stop (struct fxp_softc*) ;
 int if_getcapenable (int ) ;

__attribute__((used)) static int
fxp_detach(device_t dev)
{
 struct fxp_softc *sc = device_get_softc(dev);






 FXP_LOCK(sc);



 CSR_WRITE_1(sc, FXP_CSR_SCB_INTRCNTL, FXP_SCB_INTR_DISABLE);
 fxp_stop(sc);
 FXP_UNLOCK(sc);
 callout_drain(&sc->stat_ch);




 ether_ifdetach(sc->ifp);





 bus_teardown_intr(sc->dev, sc->fxp_res[1], sc->ih);
 sc->ih = ((void*)0);


 fxp_release(sc);
 return (0);
}
