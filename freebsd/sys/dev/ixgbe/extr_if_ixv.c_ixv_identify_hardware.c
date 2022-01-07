
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_1__ mac; int subsystem_device_id; int subsystem_vendor_id; int revision_id; int vendor_id; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;







 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_mac_82599_vf ;
 int ixgbe_mac_X540_vf ;
 int ixgbe_mac_X550EM_a_vf ;
 int ixgbe_mac_X550EM_x_vf ;
 int ixgbe_mac_X550_vf ;
 int ixgbe_mac_unknown ;
 int pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static void
ixv_identify_hardware(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 struct ixgbe_hw *hw = &adapter->hw;


 hw->vendor_id = pci_get_vendor(dev);
 hw->device_id = pci_get_device(dev);
 hw->revision_id = pci_get_revid(dev);
 hw->subsystem_vendor_id = pci_get_subvendor(dev);
 hw->subsystem_device_id = pci_get_subdevice(dev);


 switch (hw->device_id) {
 case 132:
  hw->mac.type = ixgbe_mac_82599_vf;
  break;
 case 131:
  hw->mac.type = ixgbe_mac_X540_vf;
  break;
 case 128:
  hw->mac.type = ixgbe_mac_X550_vf;
  break;
 case 129:
  hw->mac.type = ixgbe_mac_X550EM_x_vf;
  break;
 case 130:
  hw->mac.type = ixgbe_mac_X550EM_a_vf;
  break;
 default:
  device_printf(dev, "unknown mac type\n");
  hw->mac.type = ixgbe_mac_unknown;
  break;
 }
}
