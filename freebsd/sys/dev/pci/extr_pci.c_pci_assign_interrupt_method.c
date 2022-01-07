
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intpin; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int PCIB_ROUTE_INTERRUPT (int ,int ,int ) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

int
pci_assign_interrupt_method(device_t dev, device_t child)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);
 pcicfgregs *cfg = &dinfo->cfg;

 return (PCIB_ROUTE_INTERRUPT(device_get_parent(dev), child,
     cfg->intpin));
}
