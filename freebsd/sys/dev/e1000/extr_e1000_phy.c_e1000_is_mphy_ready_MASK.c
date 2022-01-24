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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_MPHY_ADDR_CTRL ; 
 int E1000_MPHY_BUSY ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

bool FUNC3(struct e1000_hw *hw)
{
	u16 retry_count = 0;
	u32 mphy_ctrl = 0;
	bool ready = FALSE;

	while (retry_count < 2) {
		mphy_ctrl = FUNC1(hw, E1000_MPHY_ADDR_CTRL);
		if (mphy_ctrl & E1000_MPHY_BUSY) {
			FUNC2(20);
			retry_count++;
			continue;
		}
		ready = TRUE;
		break;
	}

	if (!ready)
		FUNC0("ERROR READING mPHY control register, phy is busy.\n");

	return ready;
}