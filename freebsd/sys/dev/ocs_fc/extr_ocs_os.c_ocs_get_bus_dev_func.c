
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

int32_t
ocs_get_bus_dev_func(ocs_t *ocs, uint8_t* bus, uint8_t* dev, uint8_t* func)
{
 *bus = pci_get_bus(ocs->dev);
 *dev = pci_get_slot(ocs->dev);
 *func= pci_get_function(ocs->dev);
 return 0;
}
