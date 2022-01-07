
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_pci_softc {int sc_nrange; struct ofw_pci_range* sc_range; } ;
struct ofw_pci_range {int pci_hi; scalar_t__ pci; scalar_t__ size; scalar_t__ host; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int OFW_PCI_PHYS_HI_SPACEMASK ;



 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 struct ofw_pci_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ofw_pci_translate_resource(device_t bus, int type, rman_res_t start,
 rman_res_t *newstart)
{
 struct ofw_pci_softc *sc;
 struct ofw_pci_range *rp;
 int space;

 sc = device_get_softc(bus);




 for (rp = sc->sc_range; rp < sc->sc_range + sc->sc_nrange &&
     rp->pci_hi != 0; rp++) {
  if (start < rp->pci || start >= rp->pci + rp->size)
   continue;

  switch (rp->pci_hi & OFW_PCI_PHYS_HI_SPACEMASK) {
  case 130:
   space = SYS_RES_IOPORT;
   break;
  case 129:
  case 128:
   space = SYS_RES_MEMORY;
   break;
  default:
   space = -1;
  }

  if (type == space) {
   start += (rp->host - rp->pci);
   break;
  }
 }
 *newstart = start;
 return (0);
}
