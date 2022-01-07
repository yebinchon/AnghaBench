
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fxp_softc {int suspended; int dev; int flags; int ifp; } ;
typedef int if_t ;
typedef int device_t ;


 int FXP_FLAG_WOL ;
 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int IFCAP_WOL_MAGIC ;
 int IFF_DRV_RUNNING ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 struct fxp_softc* device_get_softc (int ) ;
 int fxp_init_body (struct fxp_softc*,int ) ;
 int fxp_stop (struct fxp_softc*) ;
 int if_getcapenable (int ) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static int
fxp_suspend(device_t dev)
{
 struct fxp_softc *sc = device_get_softc(dev);
 if_t ifp;
 int pmc;
 uint16_t pmstat;

 FXP_LOCK(sc);

 ifp = sc->ifp;
 if (pci_find_cap(sc->dev, PCIY_PMG, &pmc) == 0) {
  pmstat = pci_read_config(sc->dev, pmc + PCIR_POWER_STATUS, 2);
  pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
  if ((if_getcapenable(ifp) & IFCAP_WOL_MAGIC) != 0) {

   pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
   sc->flags |= FXP_FLAG_WOL;

   if_setdrvflagbits(ifp, 0, IFF_DRV_RUNNING);
   fxp_init_body(sc, 0);
  }
  pci_write_config(sc->dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
 }
 fxp_stop(sc);

 sc->suspended = 1;

 FXP_UNLOCK(sc);
 return (0);
}
