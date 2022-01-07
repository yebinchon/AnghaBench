
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int pci_read_config (int ,int ,int) ;

uint32_t
qlnx_pci_read_config_dword(void *ecore_dev, uint32_t pci_reg,
 uint32_t *reg_value)
{
 *reg_value = pci_read_config(((qlnx_host_t *)ecore_dev)->pci_dev,
    pci_reg, 4);
 return 0;
}
