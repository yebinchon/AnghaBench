
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int u32 ;
struct TYPE_5__ {int cclk; } ;
struct TYPE_6__ {int vpd_cap_addr; } ;
struct TYPE_4__ {int rev; int cim_la_size; int fpga; int nports; int portvec; TYPE_2__ vpd; int b_wnd; int a_wnd; TYPE_3__ pci; int chipid; } ;
struct adapter {TYPE_1__ params; int * chip_params; } ;


 int A_PL_REV ;
 int CHELSIO_T4 ;
 int CH_ALERT (struct adapter*,char*) ;
 int CIMLA_SIZE ;
 int EINVAL ;
 int G_CHIPID (int ) ;
 int G_REV (int ) ;
 int PCI_CAP_ID_VPD ;
 int PCI_DEVICE_ID ;
 int chip_id (struct adapter*) ;
 int get_pci_mode (struct adapter*,TYPE_3__*) ;
 int get_vpd_params (struct adapter*,TYPE_2__*,int,int *) ;
 int init_cong_ctrl (int ,int ) ;
 int set_pcie_completion_timeout (struct adapter*,int) ;
 int * t4_get_chip_params (int) ;
 int t4_get_flash_params (struct adapter*) ;
 int t4_os_find_pci_capability (struct adapter*,int ) ;
 int t4_os_pci_read_cfg2 (struct adapter*,int ,int*) ;
 int t4_read_reg (struct adapter*,int ) ;

int t4_prep_adapter(struct adapter *adapter, u32 *buf)
{
 int ret;
 uint16_t device_id;
 uint32_t pl_rev;

 get_pci_mode(adapter, &adapter->params.pci);

 pl_rev = t4_read_reg(adapter, A_PL_REV);
 adapter->params.chipid = G_CHIPID(pl_rev);
 adapter->params.rev = G_REV(pl_rev);
 if (adapter->params.chipid == 0) {

  adapter->params.chipid = CHELSIO_T4;


  if (adapter->params.rev == 1) {
   CH_ALERT(adapter, "T4 rev 1 chip is not supported.\n");
   return -EINVAL;
  }
 }

 adapter->chip_params = t4_get_chip_params(chip_id(adapter));
 if (adapter->chip_params == ((void*)0))
  return -EINVAL;

 adapter->params.pci.vpd_cap_addr =
     t4_os_find_pci_capability(adapter, PCI_CAP_ID_VPD);

 ret = t4_get_flash_params(adapter);
 if (ret < 0)
  return ret;


 t4_os_pci_read_cfg2(adapter, PCI_DEVICE_ID, &device_id);
 if (device_id >> 12 == chip_id(adapter))
  adapter->params.cim_la_size = CIMLA_SIZE;
 else {

  adapter->params.fpga = 1;
  adapter->params.cim_la_size = 2 * CIMLA_SIZE;
 }

 ret = get_vpd_params(adapter, &adapter->params.vpd, device_id, buf);
 if (ret < 0)
  return ret;

 init_cong_ctrl(adapter->params.a_wnd, adapter->params.b_wnd);




 adapter->params.nports = 1;
 adapter->params.portvec = 1;
 adapter->params.vpd.cclk = 50000;


 set_pcie_completion_timeout(adapter, 0xd);
 return 0;
}
