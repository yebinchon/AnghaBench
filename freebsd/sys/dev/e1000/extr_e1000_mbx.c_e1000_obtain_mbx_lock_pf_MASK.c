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
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_ERR_MBX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int E1000_P2VMAILBOX_PFU ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw, u16 vf_number)
{
	s32 ret_val = -E1000_ERR_MBX;
	u32 p2v_mailbox;
	int count = 10;

	FUNC0("e1000_obtain_mbx_lock_pf");

	do {
		/* Take ownership of the buffer */
		FUNC3(hw, FUNC1(vf_number),
				E1000_P2VMAILBOX_PFU);

		/* reserve mailbox for pf use */
		p2v_mailbox = FUNC2(hw, FUNC1(vf_number));
		if (p2v_mailbox & E1000_P2VMAILBOX_PFU) {
			ret_val = E1000_SUCCESS;
			break;
		}
		FUNC4(1000);
	} while (count-- > 0);

	return ret_val;

}