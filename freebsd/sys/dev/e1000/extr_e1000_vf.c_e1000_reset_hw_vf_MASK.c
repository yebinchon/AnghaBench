#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  (* read_posted ) (struct e1000_hw*,int*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_posted ) (struct e1000_hw*,int*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* check_for_rst ) (struct e1000_hw*,int /*<<< orphan*/ ) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; int /*<<< orphan*/  timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  perm_addr; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_mbx_info mbx; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_ERR_MAC_INIT ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int E1000_VF_INIT_TIMEOUT ; 
 int /*<<< orphan*/  E1000_VF_MBX_INIT_TIMEOUT ; 
 int E1000_VF_RESET ; 
 int E1000_VT_MSGTYPE_ACK ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static s32 FUNC10(struct e1000_hw *hw)
{
	struct e1000_mbx_info *mbx = &hw->mbx;
	u32 timeout = E1000_VF_INIT_TIMEOUT;
	s32 ret_val = -E1000_ERR_MAC_INIT;
	u32 ctrl, msgbuf[3];
	u8 *addr = (u8 *)(&msgbuf[1]);

	FUNC0("e1000_reset_hw_vf");

	FUNC1("Issuing a function level reset to MAC\n");
	ctrl = FUNC2(hw, E1000_CTRL);
	FUNC3(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);

	/* we cannot reset while the RSTI / RSTD bits are asserted */
	while (!mbx->ops.check_for_rst(hw, 0) && timeout) {
		timeout--;
		FUNC9(5);
	}

	if (timeout) {
		/* mailbox timeout can now become active */
		mbx->timeout = E1000_VF_MBX_INIT_TIMEOUT;

		msgbuf[0] = E1000_VF_RESET;
		mbx->ops.write_posted(hw, msgbuf, 1, 0);

		FUNC5(10);

		/* set our "perm_addr" based on info provided by PF */
		ret_val = mbx->ops.read_posted(hw, msgbuf, 3, 0);
		if (!ret_val) {
			if (msgbuf[0] == (E1000_VF_RESET |
			    E1000_VT_MSGTYPE_ACK))
				FUNC4(hw->mac.perm_addr, addr, 6);
			else
				ret_val = -E1000_ERR_MAC_INIT;
		}
	}

	return ret_val;
}