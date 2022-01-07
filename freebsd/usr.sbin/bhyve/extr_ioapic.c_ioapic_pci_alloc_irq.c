
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin; } ;
struct pci_devinst {int pi_slot; TYPE_1__ pi_lintr; } ;


 scalar_t__ lpc_bootrom () ;
 int pci_pins ;

int
ioapic_pci_alloc_irq(struct pci_devinst *pi)
{
 static int last_pin;

 if (pci_pins == 0)
  return (-1);
 if (lpc_bootrom()) {

  return (16 + (4 + pi->pi_slot + pi->pi_lintr.pin) % 8);
 }
 return (16 + (last_pin++ % pci_pins));
}
