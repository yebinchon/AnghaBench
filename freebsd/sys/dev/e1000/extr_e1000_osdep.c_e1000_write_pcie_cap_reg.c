
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct e1000_osdep {int dev; } ;
struct e1000_hw {scalar_t__ back; } ;
typedef int int32_t ;
typedef int device_t ;


 int E1000_SUCCESS ;
 int PCIY_EXPRESS ;
 int pci_find_cap (int ,int ,scalar_t__*) ;
 int pci_write_config (int ,scalar_t__,int ,int) ;

int32_t
e1000_write_pcie_cap_reg(struct e1000_hw *hw, u32 reg, u16 *value)
{
 device_t dev = ((struct e1000_osdep *)hw->back)->dev;
 u32 offset;

 pci_find_cap(dev, PCIY_EXPRESS, &offset);
 pci_write_config(dev, offset + reg, *value, 2);
 return (E1000_SUCCESS);
}
