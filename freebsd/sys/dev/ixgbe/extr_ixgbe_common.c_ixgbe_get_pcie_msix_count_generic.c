
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {int hw_addr; TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_MAX_MSIX_VECTORS_82598 ;
 int IXGBE_MAX_MSIX_VECTORS_82599 ;
 int IXGBE_PCIE_MSIX_82598_CAPS ;
 int IXGBE_PCIE_MSIX_82599_CAPS ;
 int IXGBE_PCIE_MSIX_TBL_SZ_MASK ;
 int IXGBE_READ_PCIE_WORD (struct ixgbe_hw*,int) ;
 scalar_t__ IXGBE_REMOVED (int ) ;







u16 ixgbe_get_pcie_msix_count_generic(struct ixgbe_hw *hw)
{
 u16 msix_count = 1;
 u16 max_msix_count;
 u16 pcie_offset;

 switch (hw->mac.type) {
 case 133:
  pcie_offset = IXGBE_PCIE_MSIX_82598_CAPS;
  max_msix_count = IXGBE_MAX_MSIX_VECTORS_82598;
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
  pcie_offset = IXGBE_PCIE_MSIX_82599_CAPS;
  max_msix_count = IXGBE_MAX_MSIX_VECTORS_82599;
  break;
 default:
  return msix_count;
 }

 DEBUGFUNC("ixgbe_get_pcie_msix_count_generic");
 msix_count = IXGBE_READ_PCIE_WORD(hw, pcie_offset);
 if (IXGBE_REMOVED(hw->hw_addr))
  msix_count = 0;
 msix_count &= IXGBE_PCIE_MSIX_TBL_SZ_MASK;


 msix_count++;

 if (msix_count > max_msix_count)
  msix_count = max_msix_count;

 return msix_count;
}
