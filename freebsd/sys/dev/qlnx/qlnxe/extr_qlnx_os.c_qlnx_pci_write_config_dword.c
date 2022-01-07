
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;


 int pci_write_config (int ,int ,int ,int) ;

void
qlnx_pci_write_config_dword(void *ecore_dev, uint32_t pci_reg,
 uint32_t reg_value)
{
 pci_write_config(((qlnx_host_t *)ecore_dev)->pci_dev,
  pci_reg, reg_value, 4);
 return;
}
