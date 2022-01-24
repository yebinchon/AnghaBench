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
struct fw_iq_cmd {void* fl1id; void* fl0id; void* iqid; void* type_to_iqandstindex; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FW_IQ_CMD ; 
 int FUNC0 (struct fw_iq_cmd) ; 
 int F_FW_CMD_EXEC ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_IQ_CMD_IQSTOP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 void* FUNC5 (unsigned int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_iq_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct adapter*,unsigned int,struct fw_iq_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC9(struct adapter *adap, unsigned int mbox, unsigned int pf,
	       unsigned int vf, unsigned int iqtype, unsigned int iqid,
	       unsigned int fl0id, unsigned int fl1id)
{
	struct fw_iq_cmd c;

	FUNC7(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC6(FUNC1(FW_IQ_CMD) | F_FW_CMD_REQUEST |
				  F_FW_CMD_EXEC | FUNC2(pf) |
				  FUNC4(vf));
	c.alloc_to_len16 = FUNC6(F_FW_IQ_CMD_IQSTOP | FUNC0(c));
	c.type_to_iqandstindex = FUNC6(FUNC3(iqtype));
	c.iqid = FUNC5(iqid);
	c.fl0id = FUNC5(fl0id);
	c.fl1id = FUNC5(fl1id);
	return FUNC8(adap, mbox, &c, sizeof(c), NULL);
}