
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct ahc_softc {TYPE_1__* platform_data; int dev_softc; void* bsh; void* tag; } ;
struct TYPE_2__ {int regs_res_type; int regs_res_id; struct resource* regs; } ;


 int AHC_PCI_IOADDR ;
 int AHC_PCI_MEMADDR ;
 int ENOMEM ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ ahc_pci_test_register_access (struct ahc_softc*) ;
 int aic_get_pci_bus (int ) ;
 int aic_get_pci_function (int ) ;
 int aic_get_pci_slot (int ) ;
 scalar_t__ bootverbose ;
 struct resource* bus_alloc_resource_any (int ,int,int*,int ) ;
 int bus_release_resource (int ,int,int,struct resource*) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int printf (char*) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 void* rman_get_bushandle (struct resource*) ;
 void* rman_get_bustag (struct resource*) ;

int
ahc_pci_map_registers(struct ahc_softc *ahc)
{
 struct resource *regs;
 int regs_type;
 int regs_id;
 int allow_memio;

 regs = ((void*)0);
 regs_type = 0;
 regs_id = 0;


 if (resource_int_value(device_get_name(ahc->dev_softc),
          device_get_unit(ahc->dev_softc),
          "allow_memio", &allow_memio) != 0) {
  if (bootverbose)
   device_printf(ahc->dev_softc, "Defaulting to MEMIO ");





  if (bootverbose)
   printf("off\n");
  allow_memio = 0;

 }

 if (allow_memio != 0) {

  regs_type = SYS_RES_MEMORY;
  regs_id = AHC_PCI_MEMADDR;
  regs = bus_alloc_resource_any(ahc->dev_softc, regs_type,
           &regs_id, RF_ACTIVE);
  if (regs != ((void*)0)) {
   ahc->tag = rman_get_bustag(regs);
   ahc->bsh = rman_get_bushandle(regs);





   if (ahc_pci_test_register_access(ahc) != 0) {
    device_printf(ahc->dev_softc,
           "PCI Device %d:%d:%d failed memory "
           "mapped test.  Using PIO.\n",
           aic_get_pci_bus(ahc->dev_softc),
           aic_get_pci_slot(ahc->dev_softc),
           aic_get_pci_function(ahc->dev_softc));
    bus_release_resource(ahc->dev_softc, regs_type,
           regs_id, regs);
    regs = ((void*)0);
   }
  }
 }

 if (regs == ((void*)0)) {
  regs_type = SYS_RES_IOPORT;
  regs_id = AHC_PCI_IOADDR;
  regs = bus_alloc_resource_any(ahc->dev_softc, regs_type,
           &regs_id, RF_ACTIVE);
  if (regs != ((void*)0)) {
   ahc->tag = rman_get_bustag(regs);
   ahc->bsh = rman_get_bushandle(regs);
   if (ahc_pci_test_register_access(ahc) != 0) {
    device_printf(ahc->dev_softc,
           "PCI Device %d:%d:%d failed I/O "
           "mapped test.\n",
           aic_get_pci_bus(ahc->dev_softc),
           aic_get_pci_slot(ahc->dev_softc),
           aic_get_pci_function(ahc->dev_softc));
    bus_release_resource(ahc->dev_softc, regs_type,
           regs_id, regs);
    regs = ((void*)0);
   }
  }
 }
 if (regs == ((void*)0)) {
  device_printf(ahc->dev_softc,
         "can't allocate register resources\n");
  return (ENOMEM);
 }
 ahc->platform_data->regs_res_type = regs_type;
 ahc->platform_data->regs_res_id = regs_id;
 ahc->platform_data->regs = regs;
 return (0);
}
