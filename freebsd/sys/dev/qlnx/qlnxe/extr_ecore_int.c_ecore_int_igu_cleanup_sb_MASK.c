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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int,int) ; 
 int /*<<< orphan*/  IGU_CLEANUP_CLEANUP_SET ; 
 int /*<<< orphan*/  IGU_CLEANUP_CLEANUP_TYPE ; 
 int /*<<< orphan*/  IGU_CLEANUP_COMMAND_TYPE ; 
 int IGU_CLEANUP_SLEEP_LENGTH ; 
 int IGU_CMD_INT_ACK_BASE ; 
 int IGU_COMMAND_TYPE_SET ; 
 int IGU_CTRL_CMD_TYPE_WR ; 
 int /*<<< orphan*/  IGU_CTRL_REG_FID ; 
 int /*<<< orphan*/  IGU_CTRL_REG_PXP_ADDR ; 
 int /*<<< orphan*/  IGU_CTRL_REG_TYPE ; 
 int IGU_REG_CLEANUP_STATUS_0 ; 
 int IGU_REG_CLEANUP_STATUS_4 ; 
 int /*<<< orphan*/  IGU_REG_COMMAND_REG_32LSB_DATA ; 
 int /*<<< orphan*/  IGU_REG_COMMAND_REG_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt,
				     u16 igu_sb_id,
				     bool cleanup_set,
				     u16 opaque_fid)
{
	u32 cmd_ctrl = 0, val = 0, sb_bit = 0, sb_bit_addr = 0, data = 0;
	u32 pxp_addr = IGU_CMD_INT_ACK_BASE + igu_sb_id;
	u32 sleep_cnt = IGU_CLEANUP_SLEEP_LENGTH;
	u8  type = 0; /* FIXME MichalS type??? */

	FUNC2((IGU_REG_CLEANUP_STATUS_4 -
			   IGU_REG_CLEANUP_STATUS_0) != 0x200);

	/* USE Control Command Register to perform cleanup. There is an
	 * option to do this using IGU bar, but then it can't be used for VFs.
	 */

	/* Set the data field */
	FUNC5(data, IGU_CLEANUP_CLEANUP_SET, cleanup_set ? 1 : 0);
	FUNC5(data, IGU_CLEANUP_CLEANUP_TYPE, type);
	FUNC5(data, IGU_CLEANUP_COMMAND_TYPE, IGU_COMMAND_TYPE_SET);

	/* Set the control register */
	FUNC5(cmd_ctrl, IGU_CTRL_REG_PXP_ADDR, pxp_addr);
	FUNC5(cmd_ctrl, IGU_CTRL_REG_FID, opaque_fid);
	FUNC5(cmd_ctrl, IGU_CTRL_REG_TYPE, IGU_CTRL_CMD_TYPE_WR);

	FUNC7(p_hwfn, p_ptt, IGU_REG_COMMAND_REG_32LSB_DATA, data);

	FUNC1(p_hwfn->p_dev);

	FUNC7(p_hwfn, p_ptt, IGU_REG_COMMAND_REG_CTRL, cmd_ctrl);

	/* Flush the write to IGU */
	FUNC3(p_hwfn->p_dev);

	/* calculate where to read the status bit from */
	sb_bit = 1 << (igu_sb_id % 32);
	sb_bit_addr = igu_sb_id / 32 * sizeof(u32);

	sb_bit_addr += IGU_REG_CLEANUP_STATUS_0 + (0x80 * type);

	/* Now wait for the command to complete */
	while (--sleep_cnt) {
		val = FUNC6(p_hwfn, p_ptt, sb_bit_addr);
		if ((val & sb_bit) == (cleanup_set ? sb_bit : 0))
			break;
		FUNC4(5);
	}

	if (!sleep_cnt)
		FUNC0(p_hwfn, true,
			  "Timeout waiting for clear status 0x%08x [for sb %d]\n",
			  val, igu_sb_id);
}