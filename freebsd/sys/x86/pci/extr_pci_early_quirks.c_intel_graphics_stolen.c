
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct intel_stolen_ops {int (* size ) (int const,int const,int const) ;int (* base ) (int const,int const,int const) ;} ;
struct TYPE_3__ {scalar_t__ device; struct intel_stolen_ops* data; } ;


 int PCIR_DEVICE ;
 int PCIR_SUBCLASS ;
 int PCIR_VENDOR ;
 scalar_t__ PCI_CLASS_VGA ;
 scalar_t__ PCI_VENDOR_INTEL ;
 int intel_graphics_stolen_base ;
 int intel_graphics_stolen_size ;
 TYPE_1__* intel_ids ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_cfgregopen () ;
 scalar_t__ pci_cfgregread (int const,int const,int const,int ,int) ;
 int stub1 (int const,int const,int const) ;
 int stub2 (int const,int const,int const) ;

__attribute__((used)) static void
intel_graphics_stolen(void)
{
 const struct intel_stolen_ops *ops;
 uint32_t vendor, device, class;
 int i;


 const int bus = 0;
 const int slot = 2;
 const int func = 0;

 if (pci_cfgregopen() == 0)
  return;

 vendor = pci_cfgregread(bus, slot, func, PCIR_VENDOR, 2);
 if (vendor != PCI_VENDOR_INTEL)
  return;

 class = pci_cfgregread(bus, slot, func, PCIR_SUBCLASS, 2);
 if (class != PCI_CLASS_VGA)
  return;

 device = pci_cfgregread(bus, slot, func, PCIR_DEVICE, 2);
 if (device == 0xFFFF)
  return;

 for (i = 0; i < nitems(intel_ids); i++) {
  if (intel_ids[i].device != device)
   continue;
  ops = intel_ids[i].data;
  intel_graphics_stolen_base = ops->base(bus, slot, func);
  intel_graphics_stolen_size = ops->size(bus, slot, func);
  break;
 }




}
