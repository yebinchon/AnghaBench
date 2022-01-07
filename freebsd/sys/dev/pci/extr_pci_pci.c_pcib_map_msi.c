
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int device_t ;


 int PCIB_MAP_MSI (int ,int ,int,int *,int *) ;
 int device_get_parent (int ) ;
 int pci_ht_map_msi (int ,int ) ;

int
pcib_map_msi(device_t pcib, device_t dev, int irq, uint64_t *addr,
    uint32_t *data)
{
 device_t bus;
 int error;

 bus = device_get_parent(pcib);
 error = PCIB_MAP_MSI(device_get_parent(bus), dev, irq, addr, data);
 if (error)
  return (error);

 pci_ht_map_msi(pcib, *addr);
 return (0);
}
