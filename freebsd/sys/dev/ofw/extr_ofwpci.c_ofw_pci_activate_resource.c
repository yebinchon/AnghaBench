
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct resource {int dummy; } ;
struct ofw_pci_softc {int sc_nrange; struct ofw_pci_range* sc_range; } ;
struct ofw_pci_range {int pci_hi; scalar_t__ pci; scalar_t__ size; scalar_t__ host; } ;
typedef int rman_res_t ;
typedef int device_t ;
typedef int * bus_space_tag_t ;
typedef scalar_t__ bus_space_handle_t ;


 int * BUS_GET_BUS_TAG (int ,int ) ;
 int ENOMEM ;
 int OFW_PCI_PHYS_HI_SPACEMASK ;



 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int bus_generic_activate_resource (int ,int ,int,int,struct resource*) ;
 int bus_space_map (int *,scalar_t__,int ,int ,scalar_t__*) ;
 struct ofw_pci_softc* device_get_softc (int ) ;
 int printf (char*,int ,int ) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_set_bushandle (struct resource*,scalar_t__) ;
 int rman_set_bustag (struct resource*,int *) ;
 int rman_set_virtual (struct resource*,void*) ;

__attribute__((used)) static int
ofw_pci_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
 struct ofw_pci_softc *sc;
 bus_space_handle_t handle;
 bus_space_tag_t tag;
 struct ofw_pci_range *rp;
 vm_paddr_t start;
 int space;
 int rv;

 sc = device_get_softc(bus);

 if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY) {
  return (bus_generic_activate_resource(bus, child, type, rid,
      res));
 }

 start = (vm_paddr_t)rman_get_start(res);




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

 if (bootverbose)
  printf("ofw_pci mapdev: start %jx, len %jd\n",
      (rman_res_t)start, rman_get_size(res));

 tag = BUS_GET_BUS_TAG(child, child);
 if (tag == ((void*)0))
  return (ENOMEM);

 rman_set_bustag(res, tag);
 rv = bus_space_map(tag, start,
     rman_get_size(res), 0, &handle);
 if (rv != 0)
  return (ENOMEM);

 rman_set_bushandle(res, handle);
 rman_set_virtual(res, (void *)handle);

 return (rman_activate_resource(res));
}
