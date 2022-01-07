
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {char* rm_descr; int rm_type; int rm_end; int rm_start; } ;
struct siis_controller {int channels; TYPE_2__ sc_iomem; void* r_gmem; void* r_grid; void* r_mem; void* r_rid; int gctl; int quirks; int * dev; } ;
typedef int * device_t ;
struct TYPE_5__ {scalar_t__ id; int ports; int quirks; } ;


 int ATA_INL (void*,int ) ;
 int ENXIO ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RMAN_ARRAY ;
 int SIIS_GCTL ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int *,int ,void**,int ) ;
 int bus_generic_attach (int *) ;
 int bus_release_resource (int *,int ,void*,void*) ;
 int * device_add_child (int *,char*,int) ;
 struct siis_controller* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,void*) ;
 int pci_enable_busmaster (int *) ;
 scalar_t__ pci_get_devid (int *) ;
 int rman_fini (TYPE_2__*) ;
 int rman_get_end (void*) ;
 int rman_get_start (void*) ;
 int rman_init (TYPE_2__*) ;
 int rman_manage_region (TYPE_2__*,int ,int ) ;
 TYPE_1__* siis_ids ;
 int siis_resume (int *) ;
 scalar_t__ siis_setup_interrupt (int *) ;

__attribute__((used)) static int
siis_attach(device_t dev)
{
 struct siis_controller *ctlr = device_get_softc(dev);
 uint32_t devid = pci_get_devid(dev);
 device_t child;
 int error, i, unit;

 ctlr->dev = dev;
 for (i = 0; siis_ids[i].id != 0; i++) {
  if (siis_ids[i].id == devid)
   break;
 }
 ctlr->quirks = siis_ids[i].quirks;

 ctlr->r_grid = PCIR_BAR(0);
 if (!(ctlr->r_gmem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_grid, RF_ACTIVE)))
  return (ENXIO);
 ctlr->gctl = ATA_INL(ctlr->r_gmem, SIIS_GCTL);

 ctlr->r_rid = PCIR_BAR(2);
 if (!(ctlr->r_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &ctlr->r_rid, RF_ACTIVE)))
  return (ENXIO);

 ctlr->sc_iomem.rm_start = rman_get_start(ctlr->r_mem);
 ctlr->sc_iomem.rm_end = rman_get_end(ctlr->r_mem);
 ctlr->sc_iomem.rm_type = RMAN_ARRAY;
 ctlr->sc_iomem.rm_descr = "I/O memory addresses";
 if ((error = rman_init(&ctlr->sc_iomem)) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
  return (error);
 }
 if ((error = rman_manage_region(&ctlr->sc_iomem,
     rman_get_start(ctlr->r_mem), rman_get_end(ctlr->r_mem))) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
  rman_fini(&ctlr->sc_iomem);
  return (error);
 }
 pci_enable_busmaster(dev);

 siis_resume(dev);

 ctlr->channels = siis_ids[i].ports;

 if (siis_setup_interrupt(dev)) {
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_grid, ctlr->r_gmem);
  rman_fini(&ctlr->sc_iomem);
  return ENXIO;
 }

 for (unit = 0; unit < ctlr->channels; unit++) {
  child = device_add_child(dev, "siisch", -1);
  if (child == ((void*)0))
   device_printf(dev, "failed to add channel device\n");
  else
   device_set_ivars(child, (void *)(intptr_t)unit);
 }
 bus_generic_attach(dev);
 return 0;
}
