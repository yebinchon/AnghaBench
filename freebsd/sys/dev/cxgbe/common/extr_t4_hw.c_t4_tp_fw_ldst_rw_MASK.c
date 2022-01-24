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
typedef  unsigned int u32 ;
struct TYPE_3__ {void* val; void* addr; } ;
struct TYPE_4__ {TYPE_1__ addrval; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FW_LDST_CMD ; 
 unsigned int FUNC0 (struct fw_ldst_cmd) ; 
 unsigned int F_FW_CMD_READ ; 
 unsigned int F_FW_CMD_REQUEST ; 
 unsigned int F_FW_CMD_WRITE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (void*) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*,int) ; 

__attribute__((used)) static int FUNC7(struct adapter *adap, int cmd, u32 *vals,
			    unsigned int nregs, unsigned int start_index,
			    unsigned int rw, bool sleep_ok)
{
	int ret = 0;
	unsigned int i;
	struct fw_ldst_cmd c;

	for (i = 0; i < nregs; i++) {
		FUNC5(&c, 0, sizeof(c));
		c.op_to_addrspace = FUNC4(FUNC1(FW_LDST_CMD) |
						F_FW_CMD_REQUEST |
						(rw ? F_FW_CMD_READ :
						      F_FW_CMD_WRITE) |
						FUNC2(cmd));
		c.cycles_to_len16 = FUNC4(FUNC0(c));

		c.u.addrval.addr = FUNC4(start_index + i);
		c.u.addrval.val  = rw ? 0 : FUNC4(vals[i]);
		ret = FUNC6(adap, adap->mbox, &c, sizeof(c), &c,
				      sleep_ok);
		if (ret)
			return ret;

		if (rw)
			vals[i] = FUNC3(c.u.addrval.val);
	}
	return 0;
}