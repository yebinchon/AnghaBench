
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_find_next_cap (int ,int,int,int*) ;

__attribute__((used)) static int
vga_pci_find_next_cap(device_t dev, device_t child, int capability,
    int start, int *capreg)
{

 return (pci_find_next_cap(dev, capability, start, capreg));
}
