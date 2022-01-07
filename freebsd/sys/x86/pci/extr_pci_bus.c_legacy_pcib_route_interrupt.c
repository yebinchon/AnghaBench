
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_INVALID_IRQ ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_pir_route_interrupt (int ,int ,int ,int) ;

__attribute__((used)) static int
legacy_pcib_route_interrupt(device_t pcib, device_t dev, int pin)
{






 return (PCI_INVALID_IRQ);

}
