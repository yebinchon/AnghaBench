
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {unsigned int vpd_cap_addr; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct adapter {int vpd_busy; scalar_t__ vpd_flag; TYPE_2__ params; } ;


 int CH_ERR (struct adapter*,char*,...) ;
 int EEPROMVSIZE ;
 int EEPROM_DELAY ;
 int EEPROM_MAX_POLL ;
 int EEPROM_STAT_ADDR ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 scalar_t__ PCI_VPD_DATA ;
 int cpu_to_le32 (int) ;
 int t4_os_pci_write_cfg2 (struct adapter*,scalar_t__,int) ;
 int t4_os_pci_write_cfg4 (struct adapter*,scalar_t__,int ) ;
 int t4_seeprom_read (struct adapter*,int ,int*) ;
 int t4_seeprom_wait (struct adapter*) ;
 int udelay (int ) ;

int t4_seeprom_write(struct adapter *adapter, u32 addr, u32 data)
{
 unsigned int base = adapter->params.pci.vpd_cap_addr;
 int ret;
 u32 stats_reg;
 int max_poll;




 if (addr >= EEPROMVSIZE || (addr & 3))
  return -EINVAL;





 ret = t4_seeprom_wait(adapter);
 if (ret) {
  CH_ERR(adapter, "VPD still busy from previous operation\n");
  return ret;
 }







 t4_os_pci_write_cfg4(adapter, base + PCI_VPD_DATA,
     cpu_to_le32(data));
 t4_os_pci_write_cfg2(adapter, base + PCI_VPD_ADDR,
     (u16)addr | PCI_VPD_ADDR_F);
 adapter->vpd_busy = 1;
 adapter->vpd_flag = 0;
 ret = t4_seeprom_wait(adapter);
 if (ret) {
  CH_ERR(adapter, "VPD write of address %#x failed\n", addr);
  return ret;
 }





 t4_os_pci_write_cfg4(adapter, base + PCI_VPD_DATA, 0);
 max_poll = EEPROM_MAX_POLL;
 do {
  udelay(EEPROM_DELAY);
  t4_seeprom_read(adapter, EEPROM_STAT_ADDR, &stats_reg);
 } while ((stats_reg & 0x1) && --max_poll);
 if (!max_poll)
  return -ETIMEDOUT;


 return 0;
}
