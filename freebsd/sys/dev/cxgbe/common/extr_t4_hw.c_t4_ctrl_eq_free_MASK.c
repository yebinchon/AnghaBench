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
struct fw_eq_ctrl_cmd {void* cmpliqid_eqid; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FW_EQ_CTRL_CMD ; 
 int FUNC0 (struct fw_eq_ctrl_cmd) ; 
 int F_FW_CMD_EXEC ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_EQ_CTRL_CMD_FREE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_eq_ctrl_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,unsigned int,struct fw_eq_ctrl_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC8(struct adapter *adap, unsigned int mbox, unsigned int pf,
		    unsigned int vf, unsigned int eqid)
{
	struct fw_eq_ctrl_cmd c;

	FUNC6(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC5(FUNC1(FW_EQ_CTRL_CMD) |
				  F_FW_CMD_REQUEST | F_FW_CMD_EXEC |
				  FUNC3(pf) |
				  FUNC4(vf));
	c.alloc_to_len16 = FUNC5(F_FW_EQ_CTRL_CMD_FREE | FUNC0(c));
	c.cmpliqid_eqid = FUNC5(FUNC2(eqid));
	return FUNC7(adap, mbox, &c, sizeof(c), NULL);
}