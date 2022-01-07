
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_printf (int ,char*) ;
 int pci_read_config (int ,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
cbb_print_config(device_t dev)
{
 int i;

 device_printf(dev, "PCI Configuration space:");
 for (i = 0; i < 256; i += 4) {
  if (i % 16 == 0)
   printf("\n  0x%02x: ", i);
  printf("0x%08x ", pci_read_config(dev, i, 4));
 }
 printf("\n");
}
