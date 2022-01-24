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
struct fw_vi_enable_cmd {int /*<<< orphan*/  blinkdur; void* ien_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (struct fw_vi_enable_cmd) ; 
 int /*<<< orphan*/  FW_VI_ENABLE_CMD ; 
 int F_FW_CMD_EXEC ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_VI_ENABLE_CMD_LED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_vi_enable_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_vi_enable_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adap, unsigned int mbox, unsigned int viid,
		     unsigned int nblinks)
{
	struct fw_vi_enable_cmd c;

	FUNC5(&c, 0, sizeof(c));
	c.op_to_viid = FUNC4(FUNC1(FW_VI_ENABLE_CMD) |
				   F_FW_CMD_REQUEST | F_FW_CMD_EXEC |
				   FUNC2(viid));
	c.ien_to_len16 = FUNC4(F_FW_VI_ENABLE_CMD_LED | FUNC0(c));
	c.blinkdur = FUNC3(nblinks);
	return FUNC6(adap, mbox, &c, sizeof(c), NULL);
}