
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {int pqi_dev; } ;
struct pqisrc_softstate {void* func_id; void* device_id; void* bus_id; TYPE_1__ os_specific; } ;
typedef int device_t ;


 scalar_t__ pci_get_bus (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_function (int ) ;

void pqisrc_save_controller_info(struct pqisrc_softstate *softs)
{
 device_t dev = softs->os_specific.pqi_dev;

 softs->bus_id = (uint32_t)pci_get_bus(dev);
 softs->device_id = (uint32_t)pci_get_device(dev);
 softs->func_id = (uint32_t)pci_get_function(dev);
}
