
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i40e_osdep {int dev; } ;
struct i40e_hw {scalar_t__ back; } ;


 int pci_write_config (int ,int ,int ,int) ;

void
i40e_write_pci_cfg(struct i40e_hw *hw, u32 reg, u16 value)
{
        pci_write_config(((struct i40e_osdep *)hw->back)->dev,
            reg, value, 2);
}
