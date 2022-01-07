
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;


 int pci_pins ;
 scalar_t__ vm_ioapic_pincount (struct vmctx*,int*) ;

void
ioapic_init(struct vmctx *ctx)
{

 if (vm_ioapic_pincount(ctx, &pci_pins) < 0) {
  pci_pins = 0;
  return;
 }


 if (pci_pins <= 16) {
  pci_pins = 0;
  return;
 }
 pci_pins -= 16;
}
