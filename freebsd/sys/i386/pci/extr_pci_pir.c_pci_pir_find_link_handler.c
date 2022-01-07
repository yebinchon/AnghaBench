
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_link_lookup {scalar_t__ bus; scalar_t__ device; int pin; int * pci_link_ptr; } ;
struct PIR_intpin {int link; } ;
struct PIR_entry {scalar_t__ pe_bus; scalar_t__ pe_device; struct PIR_intpin* pe_intpin; } ;


 int pci_pir_find_link (int ) ;

__attribute__((used)) static void
pci_pir_find_link_handler(struct PIR_entry *entry, struct PIR_intpin *intpin,
    void *arg)
{
 struct pci_link_lookup *lookup;

 lookup = (struct pci_link_lookup *)arg;
 if (entry->pe_bus == lookup->bus &&
     entry->pe_device == lookup->device &&
     intpin - entry->pe_intpin == lookup->pin)
  *lookup->pci_link_ptr = pci_pir_find_link(intpin->link);
}
