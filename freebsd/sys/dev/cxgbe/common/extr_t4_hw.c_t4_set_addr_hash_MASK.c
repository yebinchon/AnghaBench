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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  hashvec; } ;
struct TYPE_4__ {TYPE_1__ hash; } ;
struct fw_vi_mac_cmd {TYPE_2__ u; void* freemacs_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FW_VI_MAC_CMD ; 
 int /*<<< orphan*/  FW_VI_MAC_TYPE_HASHVEC ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_vi_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct adapter*,unsigned int,struct fw_vi_mac_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC9(struct adapter *adap, unsigned int mbox, unsigned int viid,
		     bool ucast, u64 vec, bool sleep_ok)
{
	struct fw_vi_mac_cmd c;
	u32 val;

	FUNC7(&c, 0, sizeof(c));
	c.op_to_viid = FUNC5(FUNC1(FW_VI_MAC_CMD) |
				   F_FW_CMD_REQUEST | F_FW_CMD_WRITE |
				   FUNC2(viid));
	val = FUNC3(FW_VI_MAC_TYPE_HASHVEC) |
	      FUNC4(ucast) | FUNC0(1);
	c.freemacs_to_len16 = FUNC5(val);
	c.u.hash.hashvec = FUNC6(vec);
	return FUNC8(adap, mbox, &c, sizeof(c), NULL, sleep_ok);
}