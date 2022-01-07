
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int pci_find_dbsf (int ,int ,int ,int ) ;

device_t
pci_find_bsf(uint8_t bus, uint8_t slot, uint8_t func)
{

 return (pci_find_dbsf(0, bus, slot, func));
}
