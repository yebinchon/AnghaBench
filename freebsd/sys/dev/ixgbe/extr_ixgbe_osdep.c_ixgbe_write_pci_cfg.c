
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {scalar_t__ back; } ;
struct adapter {int dev; } ;


 int pci_write_config (int ,int ,int ,int) ;

inline void
ixgbe_write_pci_cfg(struct ixgbe_hw *hw, u32 reg, u16 value)
{
 pci_write_config(((struct adapter *)hw->back)->dev, reg, value, 2);
}
