
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct adapter {scalar_t__ intr_type; int feat_cap; int advertise; scalar_t__ dmac; int * mta; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IFLIB_INTR_LEGACY ;
 int IXGBE_FEATURE_LEGACY_IRQ ;
 int IXGBE_FEATURE_SRIOV ;
 int MAX_NUM_MULTICAST_ADDRESSES ;
 int M_IXGBE ;
 int M_NOWAIT ;
 int TRUE ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_add_device_sysctls (int ) ;
 int ixgbe_add_hw_stats (struct adapter*) ;
 int ixgbe_advertise_speed ;
 int ixgbe_bypass_init (struct adapter*) ;
 int ixgbe_define_iov_schemas (int ,int*) ;
 int ixgbe_enable_tx_laser (struct ixgbe_hw*) ;
 int ixgbe_get_advertise (struct adapter*) ;
 int ixgbe_get_slot_info (struct adapter*) ;
 int ixgbe_if_update_admin_status (int ) ;
 int ixgbe_initialize_iov (struct adapter*) ;
 int ixgbe_set_advertise (struct adapter*,int ) ;
 int ixgbe_set_phy_power (struct ixgbe_hw*,int ) ;
 int ixgbe_setup_interface (int ) ;
 int ixgbe_update_stats_counters (struct adapter*) ;
 int * malloc (int,int ,int ) ;

__attribute__((used)) static int
ixgbe_if_attach_post(if_ctx_t ctx)
{
 device_t dev;
 struct adapter *adapter;
 struct ixgbe_hw *hw;
 int error = 0;

 dev = iflib_get_dev(ctx);
 adapter = iflib_get_softc(ctx);
 hw = &adapter->hw;


 if (adapter->intr_type == IFLIB_INTR_LEGACY &&
  (adapter->feat_cap & IXGBE_FEATURE_LEGACY_IRQ) == 0) {
  device_printf(dev, "Device does not support legacy interrupts");
  error = ENXIO;
  goto err;
 }


 adapter->mta = malloc(sizeof(*adapter->mta) *
                       MAX_NUM_MULTICAST_ADDRESSES, M_IXGBE, M_NOWAIT);
 if (adapter->mta == ((void*)0)) {
  device_printf(dev, "Can not allocate multicast setup array\n");
  error = ENOMEM;
  goto err;
 }


 ixgbe_set_advertise(adapter, ixgbe_advertise_speed);


 ixgbe_enable_tx_laser(hw);


 ixgbe_set_phy_power(hw, TRUE);

 ixgbe_initialize_iov(adapter);

 error = ixgbe_setup_interface(ctx);
 if (error) {
  device_printf(dev, "Interface setup failed: %d\n", error);
  goto err;
 }

 ixgbe_if_update_admin_status(ctx);


 ixgbe_update_stats_counters(adapter);
 ixgbe_add_hw_stats(adapter);


 ixgbe_get_slot_info(adapter);





 ixgbe_bypass_init(adapter);


 adapter->dmac = 0;

 adapter->advertise = ixgbe_get_advertise(adapter);

 if (adapter->feat_cap & IXGBE_FEATURE_SRIOV)
  ixgbe_define_iov_schemas(dev, &error);


 ixgbe_add_device_sysctls(ctx);

 return (0);
err:
 return (error);
}
