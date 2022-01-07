
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int device_printf (int ,char*) ;
 scalar_t__ pci_get_bus (int ) ;
 scalar_t__ pci_get_function (int ) ;
 scalar_t__ pci_get_slot (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
fixc1_nforce2(device_t dev)
{
 uint32_t val;

 if (pci_get_bus(dev) == 0 && pci_get_slot(dev) == 0 &&
     pci_get_function(dev) == 0) {
  val = pci_read_config(dev, 0x6c, 4);
  if (val & 0x000e0000) {
   device_printf(dev,
       "correcting nForce2 C1 CPU disconnect hangs\n");
   val &= ~0x000e0000;
   pci_write_config(dev, 0x6c, val, 4);
  }
 }
}
