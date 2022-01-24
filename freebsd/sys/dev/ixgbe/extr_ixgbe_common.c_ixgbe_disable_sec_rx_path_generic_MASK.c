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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IXGBE_MAX_SECRX_POLL ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SECRXCTRL ; 
 int IXGBE_SECRXCTRL_RX_DIS ; 
 int /*<<< orphan*/  IXGBE_SECRXSTAT ; 
 int IXGBE_SECRXSTAT_SECRX_RDY ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

s32 FUNC5(struct ixgbe_hw *hw)
{
#define IXGBE_MAX_SECRX_POLL 40

	int i;
	int secrxreg;

	FUNC0("ixgbe_disable_sec_rx_path_generic");


	secrxreg = FUNC2(hw, IXGBE_SECRXCTRL);
	secrxreg |= IXGBE_SECRXCTRL_RX_DIS;
	FUNC3(hw, IXGBE_SECRXCTRL, secrxreg);
	for (i = 0; i < IXGBE_MAX_SECRX_POLL; i++) {
		secrxreg = FUNC2(hw, IXGBE_SECRXSTAT);
		if (secrxreg & IXGBE_SECRXSTAT_SECRX_RDY)
			break;
		else
			/* Use interrupt-safe sleep just in case */
			FUNC4(1000);
	}

	/* For informational purposes only */
	if (i >= IXGBE_MAX_SECRX_POLL)
		FUNC1("Rx unit being enabled before security "
			 "path fully disabled.  Continuing with init.\n");

	return IXGBE_SUCCESS;
}