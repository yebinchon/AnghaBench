
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int pci_read_config (int ,int,int) ;

__attribute__((used)) static uint32_t
vga_pci_read_config(device_t dev, device_t child, int reg, int width)
{

 return (pci_read_config(dev, reg, width));
}
