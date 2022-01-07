
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev_lookup {scalar_t__ link; int bus; struct PIR_intpin* pin; int device; } ;
struct PIR_intpin {scalar_t__ link; } ;
struct PIR_entry {int pe_bus; int pe_intpin; int pe_device; } ;



__attribute__((used)) static void
pir_resume_find_device(struct PIR_entry *entry, struct PIR_intpin *intpin,
    void *arg)
{
 struct pci_dev_lookup *pd;

 pd = (struct pci_dev_lookup *)arg;
 if (intpin->link != pd->link || pd->bus != -1)
  return;
 pd->bus = entry->pe_bus;
 pd->device = entry->pe_device;
 pd->pin = intpin - entry->pe_intpin;
}
