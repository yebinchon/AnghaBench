
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIB_ROUTE_INTERRUPT (int ,int ,int) ;
 scalar_t__ PCI_INTERRUPT_VALID (int) ;
 scalar_t__ bootverbose ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int,char,int) ;
 int pci_get_slot (int ) ;

int
pcib_route_interrupt(device_t pcib, device_t dev, int pin)
{
    device_t bus;
    int parent_intpin;
    int intnum;
    parent_intpin = (pci_get_slot(dev) + (pin - 1)) % 4;





    bus = device_get_parent(pcib);
    intnum = PCIB_ROUTE_INTERRUPT(device_get_parent(bus), pcib, parent_intpin + 1);
    if (PCI_INTERRUPT_VALID(intnum) && bootverbose) {
 device_printf(pcib, "slot %d INT%c is routed to irq %d\n",
     pci_get_slot(dev), 'A' + pin - 1, intnum);
    }
    return(intnum);
}
