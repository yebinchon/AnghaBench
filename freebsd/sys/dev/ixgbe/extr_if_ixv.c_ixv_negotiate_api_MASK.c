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
struct adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int ixgbe_mbox_api_10 ; 
 int ixgbe_mbox_api_11 ; 
 int ixgbe_mbox_api_unknown ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static int
FUNC1(struct adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int             mbx_api[] = { ixgbe_mbox_api_11,
	                              ixgbe_mbox_api_10,
	                              ixgbe_mbox_api_unknown };
	int             i = 0;

	while (mbx_api[i] != ixgbe_mbox_api_unknown) {
		if (FUNC0(hw, mbx_api[i]) == 0)
			return (0);
		i++;
	}

	return (EINVAL);
}