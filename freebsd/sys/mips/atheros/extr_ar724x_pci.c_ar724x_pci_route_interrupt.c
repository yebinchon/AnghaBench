
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_get_slot (int ) ;

__attribute__((used)) static int
ar724x_pci_route_interrupt(device_t pcib, device_t device, int pin)
{

 return (pci_get_slot(device));
}
