
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
struct ifnet {int if_flags; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;
typedef int device_t ;


 int IFF_UP ;
 int INIT_DEBUGOUT (char*) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WUFC ;
 int IXGBE_WUS ;
 int device_printf (int ,char*,scalar_t__) ;
 int iflib_get_dev (int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_if_init (int ) ;

__attribute__((used)) static int
ixgbe_if_resume(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 struct ifnet *ifp = iflib_get_ifp(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 wus;

 INIT_DEBUGOUT("ixgbe_resume: begin");


 wus = IXGBE_READ_REG(hw, IXGBE_WUS);
 if (wus)
  device_printf(dev, "Woken up by (WUS): %#010x\n",
      IXGBE_READ_REG(hw, IXGBE_WUS));
 IXGBE_WRITE_REG(hw, IXGBE_WUS, 0xffffffff);

 IXGBE_WRITE_REG(hw, IXGBE_WUFC, 0);





 if (ifp->if_flags & IFF_UP)
  ixgbe_if_init(ctx);

 return (0);
}
