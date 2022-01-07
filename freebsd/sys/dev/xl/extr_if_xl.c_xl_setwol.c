
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct xl_softc {int xl_flags; scalar_t__ xl_pmcap; int xl_dev; struct ifnet* xl_ifp; } ;
struct ifnet {int if_capenable; } ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int ) ;
 int IFCAP_WOL_MAGIC ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;
 int XL_BM_PME_MAGIC ;
 int XL_CMD_RX_ENABLE ;
 int XL_COMMAND ;
 int XL_FLAG_WOL ;
 int XL_SEL_WIN (int) ;
 int XL_W7_BM_PME ;
 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

__attribute__((used)) static void
xl_setwol(struct xl_softc *sc)
{
 struct ifnet *ifp;
 u_int16_t cfg, pmstat;

 if ((sc->xl_flags & XL_FLAG_WOL) == 0)
  return;

 ifp = sc->xl_ifp;
 XL_SEL_WIN(7);

 CSR_READ_2(sc, XL_W7_BM_PME);
 cfg = 0;
 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
  cfg |= XL_BM_PME_MAGIC;
 CSR_WRITE_2(sc, XL_W7_BM_PME, cfg);

 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
  CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_ENABLE);

 pmstat = pci_read_config(sc->xl_dev,
     sc->xl_pmcap + PCIR_POWER_STATUS, 2);
 if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
  pmstat |= PCIM_PSTAT_PMEENABLE;
 else
  pmstat &= ~PCIM_PSTAT_PMEENABLE;
 pci_write_config(sc->xl_dev,
     sc->xl_pmcap + PCIR_POWER_STATUS, pmstat, 2);
}
