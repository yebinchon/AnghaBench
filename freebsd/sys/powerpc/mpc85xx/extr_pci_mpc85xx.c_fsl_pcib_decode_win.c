
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sc_nrange; TYPE_1__* sc_range; } ;
struct fsl_pcib_softc {int sc_iomem_target; int sc_ioport_target; int sc_ip_maj; TYPE_2__ pci_sc; int sc_iomem_end; scalar_t__ sc_iomem_start; int sc_ioport_end; scalar_t__ sc_ioport_start; int sc_res; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_3__ {int pci_hi; scalar_t__ size; int host; scalar_t__ pci; } ;


 int Maxmem ;
 int OFW_PCI_PHYS_HI_SPACEMASK ;




 int PIWAR_TRGT_CCSR ;
 int PIWAR_TRGT_LOCAL ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int ccsrbar_pa ;
 int ccsrbar_size ;
 int device_printf (int ,char*,...) ;
 int fsl_pcib_inbound (struct fsl_pcib_softc*,int,int,int ,int ,int ) ;
 int fsl_pcib_outbound (struct fsl_pcib_softc*,int,int,int ,scalar_t__,scalar_t__) ;
 int law_enable (int,int ,scalar_t__) ;
 int law_pci_target (int ,int*,int*) ;
 int panic (char*,int) ;
 int ptoa (int ) ;

__attribute__((used)) static int
fsl_pcib_decode_win(phandle_t node, struct fsl_pcib_softc *sc)
{
 device_t dev;
 int error, i, trgt;

 dev = sc->sc_dev;

 fsl_pcib_outbound(sc, 0, -1, 0, 0, 0);




 error = law_pci_target(sc->sc_res, &sc->sc_iomem_target,
     &sc->sc_ioport_target);
 if (error != 0) {
  device_printf(dev, "could not retrieve PCI LAW target info\n");
  return (error);
 }

 for (i = 0; i < sc->pci_sc.sc_nrange; i++) {
  switch (sc->pci_sc.sc_range[i].pci_hi &
      OFW_PCI_PHYS_HI_SPACEMASK) {
  case 131:
   continue;
  case 130:
   trgt = sc->sc_ioport_target;
   fsl_pcib_outbound(sc, 2, SYS_RES_IOPORT,
       sc->pci_sc.sc_range[i].host,
       sc->pci_sc.sc_range[i].size,
       sc->pci_sc.sc_range[i].pci);
   sc->sc_ioport_start = sc->pci_sc.sc_range[i].pci;
   sc->sc_ioport_end = sc->pci_sc.sc_range[i].pci +
       sc->pci_sc.sc_range[i].size - 1;
   break;
  case 129:
  case 128:
   trgt = sc->sc_iomem_target;
   fsl_pcib_outbound(sc, 1, SYS_RES_MEMORY,
       sc->pci_sc.sc_range[i].host,
       sc->pci_sc.sc_range[i].size,
       sc->pci_sc.sc_range[i].pci);
   sc->sc_iomem_start = sc->pci_sc.sc_range[i].pci;
   sc->sc_iomem_end = sc->pci_sc.sc_range[i].pci +
       sc->pci_sc.sc_range[i].size - 1;
   break;
  default:
   panic("Unknown range type %#x\n",
       sc->pci_sc.sc_range[i].pci_hi &
       OFW_PCI_PHYS_HI_SPACEMASK);
  }
  error = law_enable(trgt, sc->pci_sc.sc_range[i].host,
      sc->pci_sc.sc_range[i].size);
  if (error != 0) {
   device_printf(dev, "could not program LAW for range "
       "%d\n", i);
   return (error);
  }
 }




 fsl_pcib_outbound(sc, 3, -1, 0, 0, 0);
 fsl_pcib_outbound(sc, 4, -1, 0, 0, 0);

 fsl_pcib_inbound(sc, 1, -1, 0, 0, 0);
 fsl_pcib_inbound(sc, 2, -1, 0, 0, 0);
 fsl_pcib_inbound(sc, 3, PIWAR_TRGT_LOCAL, 0,
     ptoa(Maxmem), 0);




 if (sc->sc_ip_maj >= 2)
  fsl_pcib_inbound(sc, 8, PIWAR_TRGT_CCSR, ccsrbar_pa,
      ccsrbar_size, ccsrbar_pa);
 else
  fsl_pcib_inbound(sc, 1, PIWAR_TRGT_CCSR, ccsrbar_pa,
      ccsrbar_size, ccsrbar_pa);

 return (0);
}
