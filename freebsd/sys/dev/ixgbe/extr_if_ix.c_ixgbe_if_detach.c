
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int mta; int hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int EBUSY ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_CTRL_EXT ;
 int IXGBE_CTRL_EXT_DRV_LOAD ;
 int IXGBE_READ_REG (int *,int ) ;
 int IXGBE_WRITE_REG (int *,int ,int ) ;
 int M_IXGBE ;
 int device_printf (int ,char*) ;
 int free (int ,int ) ;
 int iflib_get_dev (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_free_pci_resources (int ) ;
 scalar_t__ ixgbe_pci_iov_detach (int ) ;
 int ixgbe_setup_low_power_mode (int ) ;

__attribute__((used)) static int
ixgbe_if_detach(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 u32 ctrl_ext;

 INIT_DEBUGOUT("ixgbe_detach: begin");

 if (ixgbe_pci_iov_detach(dev) != 0) {
  device_printf(dev, "SR-IOV in use; detach first.\n");
  return (EBUSY);
 }

 ixgbe_setup_low_power_mode(ctx);


 ctrl_ext = IXGBE_READ_REG(&adapter->hw, IXGBE_CTRL_EXT);
 ctrl_ext &= ~IXGBE_CTRL_EXT_DRV_LOAD;
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_CTRL_EXT, ctrl_ext);

 ixgbe_free_pci_resources(ctx);
 free(adapter->mta, M_IXGBE);

 return (0);
}
