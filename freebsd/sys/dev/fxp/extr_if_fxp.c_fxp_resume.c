
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fxp_softc {int flags; scalar_t__ suspended; int dev; int ifp; } ;
typedef int if_t ;
typedef int device_t ;


 int CSR_READ_1 (struct fxp_softc*,int ) ;
 int CSR_WRITE_1 (struct fxp_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct fxp_softc*,int ,int ) ;
 int DELAY (int) ;
 int FXP_CSR_PMDR ;
 int FXP_CSR_PORT ;
 int FXP_FLAG_WOL ;
 int FXP_FLAG_WOLCAP ;
 int FXP_LOCK (struct fxp_softc*) ;
 int FXP_PORT_SELECTIVE_RESET ;
 int FXP_UNLOCK (struct fxp_softc*) ;
 int IFF_UP ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int PCIY_PMG ;
 struct fxp_softc* device_get_softc (int ) ;
 int fxp_init_body (struct fxp_softc*,int) ;
 int if_getflags (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

__attribute__((used)) static int
fxp_resume(device_t dev)
{
 struct fxp_softc *sc = device_get_softc(dev);
 if_t ifp = sc->ifp;
 int pmc;
 uint16_t pmstat;

 FXP_LOCK(sc);

 if (pci_find_cap(sc->dev, PCIY_PMG, &pmc) == 0) {
  sc->flags &= ~FXP_FLAG_WOL;
  pmstat = pci_read_config(sc->dev, pmc + PCIR_POWER_STATUS, 2);

  pmstat &= ~PCIM_PSTAT_PMEENABLE;
  pci_write_config(sc->dev, pmc + PCIR_POWER_STATUS, pmstat, 2);
  if ((sc->flags & FXP_FLAG_WOLCAP) != 0)
   CSR_WRITE_1(sc, FXP_CSR_PMDR,
       CSR_READ_1(sc, FXP_CSR_PMDR));
 }

 CSR_WRITE_4(sc, FXP_CSR_PORT, FXP_PORT_SELECTIVE_RESET);
 DELAY(10);


 if (if_getflags(ifp) & IFF_UP)
  fxp_init_body(sc, 1);

 sc->suspended = 0;

 FXP_UNLOCK(sc);
 return (0);
}
