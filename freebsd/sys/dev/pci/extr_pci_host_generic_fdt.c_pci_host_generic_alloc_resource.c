
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; } ;
struct resource {int dummy; } ;
struct generic_pcie_ofw_devinfo {int di_rl; } ;
struct TYPE_4__ {TYPE_1__* ranges; } ;
struct generic_pcie_fdt_softc {TYPE_2__ base; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ phys_base; scalar_t__ pci_base; scalar_t__ size; } ;


 int MAX_RANGES_TUPLES ;
 int PCI_RES_BUS ;
 scalar_t__ RMAN_IS_DEFAULT_RANGE (scalar_t__,scalar_t__) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 struct resource* bus_generic_alloc_resource (int ,int ,int,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct generic_pcie_ofw_devinfo* device_get_ivars (int ) ;
 struct generic_pcie_fdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 struct resource* pci_host_generic_core_alloc_resource (int ,int ,int,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct resource_list_entry* resource_list_find (int *,int,int) ;

struct resource *
pci_host_generic_alloc_resource(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct generic_pcie_fdt_softc *sc;
 struct generic_pcie_ofw_devinfo *di;
 struct resource_list_entry *rle;
 int i;
 if ((int)ofw_bus_get_node(child) <= 0)
  return (pci_host_generic_core_alloc_resource(dev, child, type,
      rid, start, end, count, flags));


 sc = device_get_softc(dev);

 if (RMAN_IS_DEFAULT_RANGE(start, end)) {
  if ((di = device_get_ivars(child)) == ((void*)0))
   return (((void*)0));
  if (type == SYS_RES_IOPORT)
      type = SYS_RES_MEMORY;


  rle = resource_list_find(&di->di_rl, type, *rid);
  if (rle == ((void*)0))
   return (((void*)0));

  start = rle->start;
  end = rle->end;
  count = rle->count;
 }

 if (type == SYS_RES_MEMORY) {

  for (i = 0; i < MAX_RANGES_TUPLES; i++) {
   if (start >= sc->base.ranges[i].phys_base &&
       end < (sc->base.ranges[i].pci_base +
       sc->base.ranges[i].size)) {
    start -= sc->base.ranges[i].phys_base;
    start += sc->base.ranges[i].pci_base;
    end -= sc->base.ranges[i].phys_base;
    end += sc->base.ranges[i].pci_base;
    break;
   }
  }

  if (i == MAX_RANGES_TUPLES) {
   device_printf(dev, "Could not map resource "
       "%#jx-%#jx\n", start, end);
   return (((void*)0));
  }
 }

 return (bus_generic_alloc_resource(dev, child, type, rid, start,
     end, count, flags));
}
