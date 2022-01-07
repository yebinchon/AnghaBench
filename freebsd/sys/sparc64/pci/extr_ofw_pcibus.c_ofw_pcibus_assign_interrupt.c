
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ofw_pci_intr_t ;
typedef int intr ;
typedef int device_t ;


 int INTINO (int) ;
 int OF_getprop (int ,char*,int*,int) ;
 int PCIB_ROUTE_INTERRUPT (int ,int ,int) ;
 int device_get_parent (int ) ;
 int ofw_bus_get_node (int ) ;
 int pci_get_intpin (int ) ;

__attribute__((used)) static int
ofw_pcibus_assign_interrupt(device_t dev, device_t child)
{
 ofw_pci_intr_t intr;
 int isz;

 isz = OF_getprop(ofw_bus_get_node(child), "interrupts", &intr,
     sizeof(intr));
 if (isz != sizeof(intr)) {

  intr = pci_get_intpin(child);

 } else if (intr >= 255) {





  return (INTINO(intr));

 }
 return (PCIB_ROUTE_INTERRUPT(device_get_parent(dev), child, intr));
}
