
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* ocs_os_handle_t ;
struct TYPE_3__ {int dev; } ;


 int pci_read_config (int ,int ,int) ;

uint32_t
ocs_config_read32(ocs_os_handle_t os, uint32_t reg)
{
 return pci_read_config(os->dev, reg, 4);
}
