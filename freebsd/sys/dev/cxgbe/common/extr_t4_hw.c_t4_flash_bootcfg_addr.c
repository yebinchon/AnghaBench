
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sf_size; } ;
struct adapter {TYPE_1__ params; } ;


 int ENOSPC ;
 scalar_t__ FLASH_BOOTCFG_MAX_SIZE ;
 scalar_t__ FLASH_BOOTCFG_START ;

__attribute__((used)) static int t4_flash_bootcfg_addr(struct adapter *adapter)
{




 if (adapter->params.sf_size < FLASH_BOOTCFG_START + FLASH_BOOTCFG_MAX_SIZE)
  return -ENOSPC;

 return FLASH_BOOTCFG_START;
}
