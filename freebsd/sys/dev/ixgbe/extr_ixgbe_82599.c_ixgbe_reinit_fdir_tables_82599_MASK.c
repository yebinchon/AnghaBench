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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ IXGBE_ERR_FDIR_REINIT_FAILED ; 
 int /*<<< orphan*/  IXGBE_FDIRCMD ; 
 int IXGBE_FDIRCMD_CLEARHT ; 
 int /*<<< orphan*/  IXGBE_FDIRCTRL ; 
 int IXGBE_FDIRCTRL_INIT_DONE ; 
 int /*<<< orphan*/  IXGBE_FDIRFREE ; 
 int /*<<< orphan*/  IXGBE_FDIRFSTAT ; 
 int /*<<< orphan*/  IXGBE_FDIRHASH ; 
 int /*<<< orphan*/  IXGBE_FDIRLEN ; 
 int /*<<< orphan*/  IXGBE_FDIRMATCH ; 
 int /*<<< orphan*/  IXGBE_FDIRMISS ; 
 int /*<<< orphan*/  IXGBE_FDIRUSTAT ; 
 int IXGBE_FDIR_INIT_DONE_POLL ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct ixgbe_hw *hw)
{
	s32 err;
	int i;
	u32 fdirctrl = FUNC2(hw, IXGBE_FDIRCTRL);
	u32 fdircmd;
	fdirctrl &= ~IXGBE_FDIRCTRL_INIT_DONE;

	FUNC0("ixgbe_reinit_fdir_tables_82599");

	/*
	 * Before starting reinitialization process,
	 * FDIRCMD.CMD must be zero.
	 */
	err = FUNC5(hw, &fdircmd);
	if (err) {
		FUNC1("Flow Director previous command did not complete, aborting table re-initialization.\n");
		return err;
	}

	FUNC4(hw, IXGBE_FDIRFREE, 0);
	FUNC3(hw);
	/*
	 * 82599 adapters flow director init flow cannot be restarted,
	 * Workaround 82599 silicon errata by performing the following steps
	 * before re-writing the FDIRCTRL control register with the same value.
	 * - write 1 to bit 8 of FDIRCMD register &
	 * - write 0 to bit 8 of FDIRCMD register
	 */
	FUNC4(hw, IXGBE_FDIRCMD,
			(FUNC2(hw, IXGBE_FDIRCMD) |
			 IXGBE_FDIRCMD_CLEARHT));
	FUNC3(hw);
	FUNC4(hw, IXGBE_FDIRCMD,
			(FUNC2(hw, IXGBE_FDIRCMD) &
			 ~IXGBE_FDIRCMD_CLEARHT));
	FUNC3(hw);
	/*
	 * Clear FDIR Hash register to clear any leftover hashes
	 * waiting to be programmed.
	 */
	FUNC4(hw, IXGBE_FDIRHASH, 0x00);
	FUNC3(hw);

	FUNC4(hw, IXGBE_FDIRCTRL, fdirctrl);
	FUNC3(hw);

	/* Poll init-done after we write FDIRCTRL register */
	for (i = 0; i < IXGBE_FDIR_INIT_DONE_POLL; i++) {
		if (FUNC2(hw, IXGBE_FDIRCTRL) &
				   IXGBE_FDIRCTRL_INIT_DONE)
			break;
		FUNC6(1);
	}
	if (i >= IXGBE_FDIR_INIT_DONE_POLL) {
		FUNC1("Flow Director Signature poll time exceeded!\n");
		return IXGBE_ERR_FDIR_REINIT_FAILED;
	}

	/* Clear FDIR statistics registers (read to clear) */
	FUNC2(hw, IXGBE_FDIRUSTAT);
	FUNC2(hw, IXGBE_FDIRFSTAT);
	FUNC2(hw, IXGBE_FDIRMATCH);
	FUNC2(hw, IXGBE_FDIRMISS);
	FUNC2(hw, IXGBE_FDIRLEN);

	return IXGBE_SUCCESS;
}