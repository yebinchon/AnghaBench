
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_WRITE_IVAR (int ,int ,int,uintptr_t) ;
 int device_get_parent (int ) ;

int
ata_pci_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{

 return (BUS_WRITE_IVAR(device_get_parent(dev), dev, which, value));
}
