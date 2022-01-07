
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_READ_IVAR (int ,int ,int,uintptr_t*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pci_hostb_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{

 return (BUS_READ_IVAR(device_get_parent(dev), dev, which, result));
}
