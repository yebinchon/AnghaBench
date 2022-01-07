
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef int u32 ;
struct TYPE_13__ {int type; int addr; } ;
struct TYPE_12__ {void* reset_if_overtemp; int smart_speed; } ;
struct TYPE_11__ {int requested_mode; } ;
struct TYPE_9__ {int (* init_params ) (struct ixgbe_hw*) ;} ;
struct TYPE_10__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_5__ mac; TYPE_4__ phy; TYPE_3__ fc; int allow_unsupported_sfp; TYPE_2__ mbx; int subsystem_device_id; int subsystem_vendor_id; int revision_id; int device_id; int vendor_id; struct adapter* back; } ;
struct adapter {int feat_en; struct ixgbe_hw hw; void* sfp_probe; int media; TYPE_6__* shared; int dev; int ctx; } ;
typedef TYPE_6__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef int device_t ;
struct TYPE_15__ {int ift_legacy_intr; } ;
struct TYPE_14__ {int isc_rss_table_size; int isc_ntxqsets_max; int isc_nrxqsets_max; int* isc_ntxd; int* isc_nrxd; int isc_tx_csum_flags; int isc_capenable; int isc_capabilities; TYPE_7__* isc_txrx; int isc_tx_tso_segsize_max; int isc_tx_tso_size_max; int isc_tx_nsegments; int isc_tx_tso_segments_max; int isc_msix_bar; void** isc_rxqsizes; void** isc_txqsizes; } ;


 int CSUM_IP ;
 int CSUM_IP6_SCTP ;
 int CSUM_IP6_TCP ;
 int CSUM_IP6_TSO ;
 int CSUM_IP6_UDP ;
 int CSUM_SCTP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int DBA_ALIGN ;
 int EIO ;
 int ENXIO ;
 void* FALSE ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_82598_SCATTER ;
 int IXGBE_82599_SCATTER ;
 int IXGBE_CAPS ;
 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_DRV_LOAD ;



 int IXGBE_ESDP ;
 int IXGBE_FEATURE_FAN_FAIL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TSO_SIZE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int PAGE_SIZE ;
 void* TRUE ;
 int allow_unsupported_sfp ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 int iflib_get_media (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 TYPE_6__* iflib_get_softc_ctx (int ) ;
 int iflib_set_mac (int ,int ) ;
 scalar_t__ ixgbe_allocate_pci_resources (int ) ;
 int ixgbe_check_fan_failure (struct adapter*,int ,void*) ;
 int ixgbe_check_wol_support (struct adapter*) ;
 int ixgbe_flow_control ;
 int ixgbe_free_pci_resources (int ) ;
 int ixgbe_init_device_features (struct adapter*) ;
 scalar_t__ ixgbe_init_shared_code (struct ixgbe_hw*) ;
 int ixgbe_init_swfw_semaphore (struct ixgbe_hw*) ;
 int ixgbe_intr ;
 int ixgbe_mac_82598EB ;



 int ixgbe_reset_hw (struct ixgbe_hw*) ;
 int ixgbe_smart_speed ;
 int ixgbe_start_hw (struct ixgbe_hw*) ;
 TYPE_7__ ixgbe_txrx ;
 scalar_t__ ixgbe_validate_eeprom_checksum (struct ixgbe_hw*,int *) ;
 int pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int pci_msix_table_bar (int ) ;
 void* roundup2 (int,int ) ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static int
ixgbe_if_attach_pre(if_ctx_t ctx)
{
 struct adapter *adapter;
 device_t dev;
 if_softc_ctx_t scctx;
 struct ixgbe_hw *hw;
 int error = 0;
 u32 ctrl_ext;

 INIT_DEBUGOUT("ixgbe_attach: begin");


 dev = iflib_get_dev(ctx);
 adapter = iflib_get_softc(ctx);
 adapter->hw.back = adapter;
 adapter->ctx = ctx;
 adapter->dev = dev;
 scctx = adapter->shared = iflib_get_softc_ctx(ctx);
 adapter->media = iflib_get_media(ctx);
 hw = &adapter->hw;


 hw->vendor_id = pci_get_vendor(dev);
 hw->device_id = pci_get_device(dev);
 hw->revision_id = pci_get_revid(dev);
 hw->subsystem_vendor_id = pci_get_subvendor(dev);
 hw->subsystem_device_id = pci_get_subdevice(dev);


 if (ixgbe_allocate_pci_resources(ctx)) {
  device_printf(dev, "Allocation of PCI resources failed\n");
  return (ENXIO);
 }


 ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
 ctrl_ext |= IXGBE_CTRL_EXT_DRV_LOAD;
 IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);




 if (ixgbe_init_shared_code(hw) != 0) {
  device_printf(dev, "Unable to initialize the shared code\n");
  error = ENXIO;
  goto err_pci;
 }

 if (hw->mbx.ops.init_params)
  hw->mbx.ops.init_params(hw);

 hw->allow_unsupported_sfp = allow_unsupported_sfp;

 if (hw->mac.type != ixgbe_mac_82598EB)
  hw->phy.smart_speed = ixgbe_smart_speed;

 ixgbe_init_device_features(adapter);


 ixgbe_check_wol_support(adapter);


 if (adapter->feat_en & IXGBE_FEATURE_FAN_FAIL) {
  u32 esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);
  ixgbe_check_fan_failure(adapter, esdp, FALSE);
 }


 ixgbe_init_swfw_semaphore(hw);


 hw->fc.requested_mode = ixgbe_flow_control;

 hw->phy.reset_if_overtemp = TRUE;
 error = ixgbe_reset_hw(hw);
 hw->phy.reset_if_overtemp = FALSE;
 if (error == 132) {





  adapter->sfp_probe = TRUE;
  error = 0;
 } else if (error == 131) {
  device_printf(dev, "Unsupported SFP+ module detected!\n");
  error = EIO;
  goto err_pci;
 } else if (error) {
  device_printf(dev, "Hardware initialization failed\n");
  error = EIO;
  goto err_pci;
 }


 if (ixgbe_validate_eeprom_checksum(&adapter->hw, ((void*)0)) < 0) {
  device_printf(dev, "The EEPROM Checksum Is Not Valid\n");
  error = EIO;
  goto err_pci;
 }

 error = ixgbe_start_hw(hw);
 switch (error) {
 case 133:
  device_printf(dev, "This device is a pre-production adapter/LOM.  Please be aware there may be issues associated with your hardware.\nIf you are experiencing problems please contact your Intel or hardware representative who provided you with this hardware.\n");
  break;
 case 131:
  device_printf(dev, "Unsupported SFP+ Module\n");
  error = EIO;
  goto err_pci;
 case 132:
  device_printf(dev, "No SFP+ Module found\n");

 default:
  break;
 }



 iflib_set_mac(ctx, hw->mac.addr);
 switch (adapter->hw.mac.type) {
 case 130:
 case 128:
 case 129:
  scctx->isc_rss_table_size = 512;
  scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 64;
  break;
 default:
  scctx->isc_rss_table_size = 128;
  scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 16;
 }


 ixgbe_txrx.ift_legacy_intr = ixgbe_intr;

 scctx->isc_txqsizes[0] =
     roundup2(scctx->isc_ntxd[0] * sizeof(union ixgbe_adv_tx_desc) +
     sizeof(u32), DBA_ALIGN),
 scctx->isc_rxqsizes[0] =
     roundup2(scctx->isc_nrxd[0] * sizeof(union ixgbe_adv_rx_desc),
     DBA_ALIGN);


 scctx->isc_tx_csum_flags = CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_TSO |
     CSUM_IP6_TCP | CSUM_IP6_UDP | CSUM_IP6_TSO;
 if (adapter->hw.mac.type == ixgbe_mac_82598EB) {
  scctx->isc_tx_nsegments = IXGBE_82598_SCATTER;
 } else {
  scctx->isc_tx_csum_flags |= CSUM_SCTP |CSUM_IP6_SCTP;
  scctx->isc_tx_nsegments = IXGBE_82599_SCATTER;
 }

 scctx->isc_msix_bar = pci_msix_table_bar(dev);

 scctx->isc_tx_tso_segments_max = scctx->isc_tx_nsegments;
 scctx->isc_tx_tso_size_max = IXGBE_TSO_SIZE;
 scctx->isc_tx_tso_segsize_max = PAGE_SIZE;

 scctx->isc_txrx = &ixgbe_txrx;

 scctx->isc_capabilities = scctx->isc_capenable = IXGBE_CAPS;

 return (0);

err_pci:
 ctrl_ext = IXGBE_READ_REG(&adapter->hw, IXGBE_CTRL_EXT);
 ctrl_ext &= ~IXGBE_CTRL_EXT_DRV_LOAD;
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_CTRL_EXT, ctrl_ext);
 ixgbe_free_pci_resources(ctx);

 return (error);
}
