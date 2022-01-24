#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ixgbe_hw {int dummy; } ;
struct adapter {scalar_t__ link_irq; struct ixgbe_hw hw; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERRBC ; 
 long FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long) ; 

__attribute__((used)) static void
FUNC2(struct adapter *adapter)
{
	device_t        dev = adapter->dev;
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC1(dev, "Error Byte Count = %u \n",
	    FUNC0(hw, IXGBE_ERRBC));

	FUNC1(dev, "MBX IRQ Handled: %lu\n", (long)adapter->link_irq);
}