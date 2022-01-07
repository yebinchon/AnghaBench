
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef TYPE_1__* ocs_os_handle_t ;
struct TYPE_3__ {int dev; } ;


 void pci_write_config (int ,int ,int ,int) ;

void
ocs_config_write8(ocs_os_handle_t os, uint32_t reg, uint8_t val)
{
 return pci_write_config(os->dev, reg, val, 1);
}
