
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_find_extcap (int ,int,int*) ;

__attribute__((used)) static int
pci_hostb_find_extcap(device_t dev, device_t child, int capability,
    int *capreg)
{

 return (pci_find_extcap(dev, capability, capreg));
}
