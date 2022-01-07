
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_PCI_LINK_STATUS ;
 int IXGBE_READ_PCIE_WORD (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int ixgbe_set_pci_config_data_generic (struct ixgbe_hw*,int ) ;

s32 ixgbe_get_bus_info_generic(struct ixgbe_hw *hw)
{
 u16 link_status;

 DEBUGFUNC("ixgbe_get_bus_info_generic");


 link_status = IXGBE_READ_PCIE_WORD(hw, IXGBE_PCI_LINK_STATUS);

 ixgbe_set_pci_config_data_generic(hw, link_status);

 return IXGBE_SUCCESS;
}
