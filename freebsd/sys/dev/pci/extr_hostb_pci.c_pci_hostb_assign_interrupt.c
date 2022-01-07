
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCI_ASSIGN_INTERRUPT (int ,int ) ;
 int device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static int
pci_hostb_assign_interrupt(device_t dev, device_t child)
{

 device_printf(dev, "child %s requested pci_assign_interrupt\n",
     device_get_nameunit(child));
 return (PCI_ASSIGN_INTERRUPT(device_get_parent(dev), dev));
}
