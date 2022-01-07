
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* pci_cmd_word; } ;
struct TYPE_4__ {void* subsystem_device_id; void* subsystem_vendor_id; void* revision_id; int device_id; int vendor_id; TYPE_1__ bus; } ;
struct adapter {TYPE_2__ hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int PCIR_COMMAND ;
 int PCIR_REVID ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int device_printf (int ,char*) ;
 scalar_t__ e1000_set_mac_type (TYPE_2__*) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 void* pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
em_identify_hardware(if_ctx_t ctx)
{
 device_t dev = iflib_get_dev(ctx);
 struct adapter *adapter = iflib_get_softc(ctx);


 adapter->hw.bus.pci_cmd_word = pci_read_config(dev, PCIR_COMMAND, 2);


 adapter->hw.vendor_id = pci_get_vendor(dev);
 adapter->hw.device_id = pci_get_device(dev);
 adapter->hw.revision_id = pci_read_config(dev, PCIR_REVID, 1);
 adapter->hw.subsystem_vendor_id =
     pci_read_config(dev, PCIR_SUBVEND_0, 2);
 adapter->hw.subsystem_device_id =
     pci_read_config(dev, PCIR_SUBDEV_0, 2);


 if (e1000_set_mac_type(&adapter->hw)) {
  device_printf(dev, "Setup init failure\n");
  return;
 }
}
