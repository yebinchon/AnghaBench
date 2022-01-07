
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
struct adapter {int vpd_busy; int vpd_flag; TYPE_2__ params; } ;


 int CH_ERR (struct adapter*,char*,...) ;
 int EEPROMVSIZE ;
 int EINVAL ;
 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 scalar_t__ PCI_VPD_DATA ;
 int le32_to_cpu (int) ;
 int t4_os_pci_read_cfg4 (struct adapter*,scalar_t__,int*) ;
 int t4_os_pci_write_cfg2 (struct adapter*,scalar_t__,int ) ;
 int t4_seeprom_wait (struct adapter*) ;

int t4_seeprom_read(struct adapter *adapter, u32 addr, u32 *data)
{
 unsigned int base = adapter->params.pci.vpd_cap_addr;
 int ret;




 if (addr >= EEPROMVSIZE || (addr & 3))
  return -EINVAL;





 ret = t4_seeprom_wait(adapter);
 if (ret) {
  CH_ERR(adapter, "VPD still busy from previous operation\n");
  return ret;
 }







 t4_os_pci_write_cfg2(adapter, base + PCI_VPD_ADDR, (u16)addr);
 adapter->vpd_busy = 1;
 adapter->vpd_flag = PCI_VPD_ADDR_F;
 ret = t4_seeprom_wait(adapter);
 if (ret) {
  CH_ERR(adapter, "VPD read of address %#x failed\n", addr);
  return ret;
 }





 t4_os_pci_read_cfg4(adapter, base + PCI_VPD_DATA, data);
 *data = le32_to_cpu(*data);
 return 0;
}
