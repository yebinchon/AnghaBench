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
struct fw_vi_rxmode_cmd {void* mtu_to_vlanexen; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (struct fw_vi_rxmode_cmd) ; 
 int /*<<< orphan*/  FW_VI_RXMODE_CMD ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int M_FW_VI_RXMODE_CMD_ALLMULTIEN ; 
 int M_FW_VI_RXMODE_CMD_BROADCASTEN ; 
 int M_FW_VI_RXMODE_CMD_MTU ; 
 int M_FW_VI_RXMODE_CMD_PROMISCEN ; 
 int M_FW_VI_RXMODE_CMD_VLANEXEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_vi_rxmode_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct adapter*,unsigned int,struct fw_vi_rxmode_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC11(struct adapter *adap, unsigned int mbox, unsigned int viid,
		  int mtu, int promisc, int all_multi, int bcast, int vlanex,
		  bool sleep_ok)
{
	struct fw_vi_rxmode_cmd c;

	/* convert to FW values */
	if (mtu < 0)
		mtu = M_FW_VI_RXMODE_CMD_MTU;
	if (promisc < 0)
		promisc = M_FW_VI_RXMODE_CMD_PROMISCEN;
	if (all_multi < 0)
		all_multi = M_FW_VI_RXMODE_CMD_ALLMULTIEN;
	if (bcast < 0)
		bcast = M_FW_VI_RXMODE_CMD_BROADCASTEN;
	if (vlanex < 0)
		vlanex = M_FW_VI_RXMODE_CMD_VLANEXEN;

	FUNC9(&c, 0, sizeof(c));
	c.op_to_viid = FUNC8(FUNC1(FW_VI_RXMODE_CMD) |
				   F_FW_CMD_REQUEST | F_FW_CMD_WRITE |
				   FUNC6(viid));
	c.retval_len16 = FUNC8(FUNC0(c));
	c.mtu_to_vlanexen =
		FUNC8(FUNC4(mtu) |
			    FUNC5(promisc) |
			    FUNC2(all_multi) |
			    FUNC3(bcast) |
			    FUNC7(vlanex));
	return FUNC10(adap, mbox, &c, sizeof(c), NULL, sleep_ok);
}