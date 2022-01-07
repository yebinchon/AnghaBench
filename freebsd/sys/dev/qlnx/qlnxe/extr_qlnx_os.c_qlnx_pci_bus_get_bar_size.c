
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int PCIR_BAR (int) ;
 int SYS_RES_MEMORY ;
 int bus_get_resource_count (int ,int ,int ) ;

uint32_t
qlnx_pci_bus_get_bar_size(void *ecore_dev, uint8_t bar_id)
{
 uint32_t bar_size;

 bar_id = bar_id * 2;

 bar_size = bus_get_resource_count(((qlnx_host_t *)ecore_dev)->pci_dev,
    SYS_RES_MEMORY,
    PCIR_BAR(bar_id));

 return (bar_size);
}
