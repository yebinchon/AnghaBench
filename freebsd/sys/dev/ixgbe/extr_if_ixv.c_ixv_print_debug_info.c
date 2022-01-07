
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
struct adapter {scalar_t__ link_irq; struct ixgbe_hw hw; int dev; } ;
typedef int device_t ;


 int IXGBE_ERRBC ;
 long IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int device_printf (int ,char*,long) ;

__attribute__((used)) static void
ixv_print_debug_info(struct adapter *adapter)
{
 device_t dev = adapter->dev;
 struct ixgbe_hw *hw = &adapter->hw;

 device_printf(dev, "Error Byte Count = %u \n",
     IXGBE_READ_REG(hw, IXGBE_ERRBC));

 device_printf(dev, "MBX IRQ Handled: %lu\n", (long)adapter->link_irq);
}
