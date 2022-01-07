
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_board_params {int dummy; } ;
struct al_eth_adapter {scalar_t__ board_type; int mac_addr; int ec_base; int mac_base; int internal_pcie_base; int dev; } ;


 scalar_t__ ALPINE_INTEGRATED ;
 int al_eth_board_params_get (int ,struct al_eth_board_params*) ;
 int al_eth_board_params_set (int ,struct al_eth_board_params*) ;
 int al_eth_flr_rmn (int *,int *,int ,int ) ;
 int al_eth_fpga_read_pci_config ;
 int al_eth_fpga_write_pci_config ;
 int al_eth_mac_addr_read (int ,int ,int ) ;
 int al_eth_mac_addr_store (int ,int ,int ) ;
 int al_eth_read_pci_config ;
 int al_eth_write_pci_config ;

__attribute__((used)) static int
al_eth_function_reset(struct al_eth_adapter *adapter)
{
 struct al_eth_board_params params;
 int rc;


 al_eth_board_params_get(adapter->mac_base, &params);
 al_eth_mac_addr_read(adapter->ec_base, 0, adapter->mac_addr);
 if (adapter->board_type == ALPINE_INTEGRATED)
  rc = al_eth_flr_rmn(&al_eth_read_pci_config,
      &al_eth_write_pci_config,
      adapter->dev, adapter->mac_base);
 else
  rc = al_eth_flr_rmn(&al_eth_fpga_read_pci_config,
      &al_eth_fpga_write_pci_config,
      adapter->internal_pcie_base, adapter->mac_base);


 al_eth_board_params_set(adapter->mac_base, &params);
 al_eth_mac_addr_store(adapter->ec_base, 0, adapter->mac_addr);

 return (rc);
}
