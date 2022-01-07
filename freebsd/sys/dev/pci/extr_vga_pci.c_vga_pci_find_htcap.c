
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_find_htcap (int ,int,int*) ;

__attribute__((used)) static int
vga_pci_find_htcap(device_t dev, device_t child, int capability,
    int *capreg)
{

 return (pci_find_htcap(dev, capability, capreg));
}
