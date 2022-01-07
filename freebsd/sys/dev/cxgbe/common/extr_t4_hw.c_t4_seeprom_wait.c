
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {unsigned int vpd_cap_addr; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct adapter {int vpd_flag; scalar_t__ vpd_busy; TYPE_2__ params; } ;


 int EEPROM_DELAY ;
 int EEPROM_MAX_POLL ;
 int ETIMEDOUT ;
 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 int t4_os_pci_read_cfg2 (struct adapter*,scalar_t__,int*) ;
 int udelay (int ) ;

__attribute__((used)) static int t4_seeprom_wait(struct adapter *adapter)
{
 unsigned int base = adapter->params.pci.vpd_cap_addr;
 int max_poll;





 if (!adapter->vpd_busy)
  return 0;





 max_poll = EEPROM_MAX_POLL;
 do {
  u16 val;

  udelay(EEPROM_DELAY);
  t4_os_pci_read_cfg2(adapter, base + PCI_VPD_ADDR, &val);





  if ((val & PCI_VPD_ADDR_F) == adapter->vpd_flag) {
   adapter->vpd_busy = 0;
   return 0;
  }
 } while (--max_poll);
 return -ETIMEDOUT;
}
