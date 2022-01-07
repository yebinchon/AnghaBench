
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tunable_name ;
struct TYPE_2__ {scalar_t__ intpin; int domain; int bus; int slot; int intline; } ;
struct pci_devinfo {int resources; TYPE_1__ cfg; } ;
typedef TYPE_1__ pcicfgregs ;
typedef int device_t ;


 int PCIR_INTLINE ;
 int PCI_ASSIGN_INTERRUPT (int ,int ) ;
 int PCI_INTERRUPT_VALID (int) ;
 int PCI_INVALID_IRQ ;
 int SYS_RES_IRQ ;
 scalar_t__ TUNABLE_INT_FETCH (char*,int*) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int pci_write_config (int ,int ,int,int) ;
 int resource_list_add (int *,int ,int ,int,int,int) ;
 int snprintf (char*,int,char*,int,int,int,scalar_t__) ;

__attribute__((used)) static void
pci_assign_interrupt(device_t bus, device_t dev, int force_route)
{
 struct pci_devinfo *dinfo = device_get_ivars(dev);
 pcicfgregs *cfg = &dinfo->cfg;
 char tunable_name[64];
 int irq;


 if (cfg->intpin == 0)
  return;


 irq = PCI_INVALID_IRQ;
 snprintf(tunable_name, sizeof(tunable_name),
     "hw.pci%d.%d.%d.INT%c.irq",
     cfg->domain, cfg->bus, cfg->slot, cfg->intpin + 'A' - 1);
 if (TUNABLE_INT_FETCH(tunable_name, &irq) && (irq >= 255 || irq <= 0))
  irq = PCI_INVALID_IRQ;
 if (!PCI_INTERRUPT_VALID(irq)) {
  if (!PCI_INTERRUPT_VALID(cfg->intline) || force_route)
   irq = PCI_ASSIGN_INTERRUPT(bus, dev);
  if (!PCI_INTERRUPT_VALID(irq))
   irq = cfg->intline;
 }


 if (!PCI_INTERRUPT_VALID(irq))
  return;


 if (irq != cfg->intline) {
  cfg->intline = irq;
  pci_write_config(dev, PCIR_INTLINE, irq, 1);
 }


 resource_list_add(&dinfo->resources, SYS_RES_IRQ, 0, irq, irq, 1);
}
