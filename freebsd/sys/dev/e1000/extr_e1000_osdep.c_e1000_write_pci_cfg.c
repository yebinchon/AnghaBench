
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_osdep {int dev; } ;
struct e1000_hw {scalar_t__ back; } ;


 int pci_write_config (int ,int ,int ,int) ;

void
e1000_write_pci_cfg(struct e1000_hw *hw, u32 reg, u16 *value)
{
 pci_write_config(((struct e1000_osdep *)hw->back)->dev, reg, *value, 2);
}
