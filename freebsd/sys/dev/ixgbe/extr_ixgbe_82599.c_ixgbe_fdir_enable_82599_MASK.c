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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_ATR_BUCKET_HASH_KEY ; 
 int /*<<< orphan*/  IXGBE_ATR_SIGNATURE_HASH_KEY ; 
 int /*<<< orphan*/  IXGBE_FDIRCTRL ; 
 int IXGBE_FDIRCTRL_INIT_DONE ; 
 int /*<<< orphan*/  IXGBE_FDIRHKEY ; 
 int /*<<< orphan*/  IXGBE_FDIRSKEY ; 
 int IXGBE_FDIR_INIT_DONE_POLL ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_hw *hw, u32 fdirctrl)
{
	int i;

	FUNC0("ixgbe_fdir_enable_82599");

	/* Prime the keys for hashing */
	FUNC4(hw, IXGBE_FDIRHKEY, IXGBE_ATR_BUCKET_HASH_KEY);
	FUNC4(hw, IXGBE_FDIRSKEY, IXGBE_ATR_SIGNATURE_HASH_KEY);

	/*
	 * Poll init-done after we write the register.  Estimated times:
	 *      10G: PBALLOC = 11b, timing is 60us
	 *       1G: PBALLOC = 11b, timing is 600us
	 *     100M: PBALLOC = 11b, timing is 6ms
	 *
	 *     Multiple these timings by 4 if under full Rx load
	 *
	 * So we'll poll for IXGBE_FDIR_INIT_DONE_POLL times, sleeping for
	 * 1 msec per poll time.  If we're at line rate and drop to 100M, then
	 * this might not finish in our poll time, but we can live with that
	 * for now.
	 */
	FUNC4(hw, IXGBE_FDIRCTRL, fdirctrl);
	FUNC3(hw);
	for (i = 0; i < IXGBE_FDIR_INIT_DONE_POLL; i++) {
		if (FUNC2(hw, IXGBE_FDIRCTRL) &
				   IXGBE_FDIRCTRL_INIT_DONE)
			break;
		FUNC5(1);
	}

	if (i >= IXGBE_FDIR_INIT_DONE_POLL)
		FUNC1("Flow Director poll time exceeded!\n");
}