
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int (* reset_hw ) (struct ixgbe_hw*) ;int (* init_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; int addr; int perm_addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; struct adapter* back; } ;
struct adapter {struct ixgbe_hw hw; int media; TYPE_3__* shared; int ctx; int dev; } ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef int device_t ;
typedef int addr ;
struct TYPE_7__ {int isc_ntxqsets_max; int isc_nrxqsets_max; int* isc_ntxd; int* isc_nrxd; int isc_tx_csum_flags; int isc_capabilities; int isc_capenable; int * isc_txrx; int isc_tx_tso_segsize_max; int isc_tx_tso_size_max; int isc_tx_nsegments; int isc_tx_tso_segments_max; int isc_msix_bar; void** isc_rxqsizes; void** isc_txqsizes; } ;


 int CSUM_IP ;
 int CSUM_IP6_TCP ;
 int CSUM_IP6_TSO ;
 int CSUM_IP6_UDP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int DBA_ALIGN ;
 int EIO ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_WOL ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_82599_SCATTER ;
 int IXGBE_CAPS ;
 int IXGBE_ERR_RESET_FAILED ;
 int IXGBE_TSO_SIZE ;
 int OID_AUTO ;
 int PAGE_SIZE ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct adapter*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int arc4rand (int**,int,int ) ;
 int bcopy (int*,int ,int) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 int iflib_get_media (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 TYPE_3__* iflib_get_softc_ctx (int ) ;
 int iflib_set_mac (int ,int ) ;
 int ixgbe_init_mbx_params_vf (struct ixgbe_hw*) ;
 int ixgbe_init_ops_vf (struct ixgbe_hw*) ;



 int ixgbe_txrx ;
 scalar_t__ ixv_allocate_pci_resources (int ) ;
 int ixv_check_ether_addr (int ) ;
 int ixv_free_pci_resources (int ) ;
 int ixv_identify_hardware (int ) ;
 int ixv_init_device_features (struct adapter*) ;
 int ixv_negotiate_api (struct adapter*) ;
 int ixv_sysctl_debug ;
 int pci_msix_table_bar (int ) ;
 void* roundup2 (int,int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;

__attribute__((used)) static int
ixv_if_attach_pre(if_ctx_t ctx)
{
 struct adapter *adapter;
 device_t dev;
 if_softc_ctx_t scctx;
 struct ixgbe_hw *hw;
 int error = 0;

 INIT_DEBUGOUT("ixv_attach: begin");


 dev = iflib_get_dev(ctx);
 adapter = iflib_get_softc(ctx);
 adapter->dev = dev;
 adapter->ctx = ctx;
 adapter->hw.back = adapter;
 scctx = adapter->shared = iflib_get_softc_ctx(ctx);
 adapter->media = iflib_get_media(ctx);
 hw = &adapter->hw;


 if (ixv_allocate_pci_resources(ctx)) {
  device_printf(dev, "ixv_allocate_pci_resources() failed!\n");
  error = ENXIO;
  goto err_out;
 }


 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO, "debug",
     CTLTYPE_INT | CTLFLAG_RW, adapter, 0, ixv_sysctl_debug, "I",
     "Debug Info");


 ixv_identify_hardware(ctx);
 ixv_init_device_features(adapter);


 error = ixgbe_init_ops_vf(hw);
 if (error) {
  device_printf(dev, "ixgbe_init_ops_vf() failed!\n");
  error = EIO;
  goto err_out;
 }


 ixgbe_init_mbx_params_vf(hw);

 error = hw->mac.ops.reset_hw(hw);
 if (error == IXGBE_ERR_RESET_FAILED)
  device_printf(dev, "...reset_hw() failure: Reset Failed!\n");
 else if (error)
  device_printf(dev, "...reset_hw() failed with error %d\n",
      error);
 if (error) {
  error = EIO;
  goto err_out;
 }

 error = hw->mac.ops.init_hw(hw);
 if (error) {
  device_printf(dev, "...init_hw() failed with error %d\n",
      error);
  error = EIO;
  goto err_out;
 }


 error = ixv_negotiate_api(adapter);
 if (error) {
  device_printf(dev,
      "Mailbox API negotiation failed during attach!\n");
  goto err_out;
 }


 if (!ixv_check_ether_addr(hw->mac.addr)) {
  u8 addr[ETHER_ADDR_LEN];
  arc4rand(&addr, sizeof(addr), 0);
  addr[0] &= 0xFE;
  addr[0] |= 0x02;
  bcopy(addr, hw->mac.addr, sizeof(addr));
  bcopy(addr, hw->mac.perm_addr, sizeof(addr));
 }



 iflib_set_mac(ctx, hw->mac.addr);
 switch (adapter->hw.mac.type) {
 case 128:
 case 129:
 case 130:
  scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 2;
  break;
 default:
  scctx->isc_ntxqsets_max = scctx->isc_nrxqsets_max = 1;
 }
 scctx->isc_txqsizes[0] =
     roundup2(scctx->isc_ntxd[0] * sizeof(union ixgbe_adv_tx_desc) +
     sizeof(u32), DBA_ALIGN);
 scctx->isc_rxqsizes[0] =
     roundup2(scctx->isc_nrxd[0] * sizeof(union ixgbe_adv_rx_desc),
     DBA_ALIGN);

 scctx->isc_tx_csum_flags = CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_TSO |
     CSUM_IP6_TCP | CSUM_IP6_UDP | CSUM_IP6_TSO;
 scctx->isc_tx_nsegments = IXGBE_82599_SCATTER;
 scctx->isc_msix_bar = pci_msix_table_bar(dev);
 scctx->isc_tx_tso_segments_max = scctx->isc_tx_nsegments;
 scctx->isc_tx_tso_size_max = IXGBE_TSO_SIZE;
 scctx->isc_tx_tso_segsize_max = PAGE_SIZE;

 scctx->isc_txrx = &ixgbe_txrx;






 scctx->isc_capabilities = IXGBE_CAPS;
 scctx->isc_capabilities ^= IFCAP_WOL;
 scctx->isc_capenable = scctx->isc_capabilities;

 INIT_DEBUGOUT("ixv_if_attach_pre: end");

 return (0);

err_out:
 ixv_free_pci_resources(ctx);

 return (error);
}
