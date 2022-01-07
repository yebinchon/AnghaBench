
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int speed; int width; } ;
struct TYPE_5__ {int valid_functions; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_3__ bus; TYPE_2__ func_caps; TYPE_1__ mac; } ;
struct ixl_pf {int supported_speeds; int dev; struct i40e_hw hw; } ;
typedef int device_t ;


 scalar_t__ I40E_MAC_X722 ;
 int PCIER_LINK_STA ;
 int PCIY_EXPRESS ;
 int bitcount32 (int ) ;
 int device_printf (int ,char*,...) ;
 int i40e_bus_speed_2500 ;
 int i40e_bus_speed_5000 ;
 int i40e_bus_speed_8000 ;
 int i40e_bus_width_pcie_x1 ;
 int i40e_bus_width_pcie_x2 ;
 int i40e_bus_width_pcie_x4 ;
 int i40e_bus_width_pcie_x8 ;
 int i40e_set_pci_config_data (struct i40e_hw*,int ) ;
 int ixl_max_aq_speed_to_value (int ) ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;

void
ixl_get_bus_info(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
        u16 link;
        u32 offset, num_ports;
 u64 max_speed;


 if (hw->mac.type == I40E_MAC_X722)
  return;


        pci_find_cap(dev, PCIY_EXPRESS, &offset);
        link = pci_read_config(dev, offset + PCIER_LINK_STA, 2);


 i40e_set_pci_config_data(hw, link);


        device_printf(dev,"PCI Express Bus: Speed %s %s\n",
            ((hw->bus.speed == i40e_bus_speed_8000) ? "8.0GT/s":
            (hw->bus.speed == i40e_bus_speed_5000) ? "5.0GT/s":
            (hw->bus.speed == i40e_bus_speed_2500) ? "2.5GT/s":"Unknown"),
            (hw->bus.width == i40e_bus_width_pcie_x8) ? "Width x8" :
            (hw->bus.width == i40e_bus_width_pcie_x4) ? "Width x4" :
            (hw->bus.width == i40e_bus_width_pcie_x2) ? "Width x2" :
            (hw->bus.width == i40e_bus_width_pcie_x1) ? "Width x1" :
            ("Unknown"));





 if (hw->bus.speed >= i40e_bus_speed_8000
     && hw->bus.width >= i40e_bus_width_pcie_x8)
  return;

 num_ports = bitcount32(hw->func_caps.valid_functions);
 max_speed = ixl_max_aq_speed_to_value(pf->supported_speeds) / 1000000;

 if ((num_ports * max_speed) > hw->bus.speed * hw->bus.width) {
                device_printf(dev, "PCI-Express bandwidth available"
                    " for this device may be insufficient for"
                    " optimal performance.\n");
                device_printf(dev, "Please move the device to a different"
      " PCI-e link with more lanes and/or higher"
      " transfer rate.\n");
        }
}
