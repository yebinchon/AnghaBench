#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct link_config {int requested_fc; int requested_fec; unsigned int fec_hint; scalar_t__ requested_aneg; unsigned int supported; scalar_t__ requested_speed; } ;
struct TYPE_7__ {void* rcap; } ;
struct TYPE_6__ {void* rcap32; } ;
struct TYPE_8__ {TYPE_3__ l1cfg; TYPE_2__ l1cfg32; } ;
struct fw_port_cmd {TYPE_4__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_5__ {scalar_t__ port_caps32; } ;
struct adapter {size_t* chan_map; TYPE_1__ params; int /*<<< orphan*/ * port; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,unsigned int,unsigned int) ; 
 int FEC_AUTO ; 
 int FEC_BASER_RS ; 
 int FEC_RS ; 
 unsigned int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG32 ; 
 unsigned int FW_PORT_CAP32_ANEG ; 
 unsigned int FW_PORT_CAP32_FC_RX ; 
 unsigned int FW_PORT_CAP32_FC_TX ; 
 unsigned int FW_PORT_CAP32_FEC_BASER_RS ; 
 unsigned int FW_PORT_CAP32_FEC_RS ; 
 unsigned int FW_PORT_CAP32_FORCE_PAUSE ; 
 int /*<<< orphan*/  FW_PORT_CAP32_MDI_AUTO ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 unsigned int F_FW_CMD_EXEC ; 
 unsigned int F_FW_CMD_REQUEST ; 
 int /*<<< orphan*/  M_FW_PORT_CAP32_SPEED ; 
 int PAUSE_AUTONEG ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (unsigned int) ; 
 void* FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (unsigned int) ; 
 unsigned int FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC12 (scalar_t__) ; 
 int FUNC13 (struct adapter*,unsigned int,struct fw_port_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC14(struct adapter *adap, unsigned int mbox, unsigned int port,
		  struct link_config *lc)
{
	struct fw_port_cmd c;
	unsigned int mdi = FUNC3(FW_PORT_CAP32_MDI_AUTO);
	unsigned int aneg, fc, fec, speed, rcap;

	fc = 0;
	if (lc->requested_fc & PAUSE_RX)
		fc |= FW_PORT_CAP32_FC_RX;
	if (lc->requested_fc & PAUSE_TX)
		fc |= FW_PORT_CAP32_FC_TX;
	if (!(lc->requested_fc & PAUSE_AUTONEG))
		fc |= FW_PORT_CAP32_FORCE_PAUSE;

	fec = 0;
	if (lc->requested_fec == FEC_AUTO)
		fec = lc->fec_hint;
	else {
		if (lc->requested_fec & FEC_RS)
			fec |= FW_PORT_CAP32_FEC_RS;
		if (lc->requested_fec & FEC_BASER_RS)
			fec |= FW_PORT_CAP32_FEC_BASER_RS;
	}

	if (lc->requested_aneg == AUTONEG_DISABLE)
		aneg = 0;
	else if (lc->requested_aneg == AUTONEG_ENABLE)
		aneg = FW_PORT_CAP32_ANEG;
	else
		aneg = lc->supported & FW_PORT_CAP32_ANEG;

	if (aneg) {
		speed = lc->supported & FUNC4(M_FW_PORT_CAP32_SPEED);
	} else if (lc->requested_speed != 0)
		speed = FUNC12(lc->requested_speed);
	else
		speed = FUNC8(lc->supported);

	/* Force AN on for BT cards. */
	if (FUNC10(adap->port[adap->chan_map[port]]))
		aneg = lc->supported & FW_PORT_CAP32_ANEG;

	rcap = aneg | speed | fc | fec;
	if ((rcap | lc->supported) != lc->supported) {
#ifdef INVARIANTS
		CH_WARN(adap, "rcap 0x%08x, pcap 0x%08x\n", rcap,
		    lc->supported);
#endif
		rcap &= lc->supported;
	}
	rcap |= mdi;

	FUNC11(&c, 0, sizeof(c));
	c.op_to_portid = FUNC7(FUNC2(FW_PORT_CMD) |
				     F_FW_CMD_REQUEST | F_FW_CMD_EXEC |
				     FUNC6(port));
	if (adap->params.port_caps32) {
		c.action_to_len16 =
		    FUNC7(FUNC5(FW_PORT_ACTION_L1_CFG32) |
			FUNC1(c));
		c.u.l1cfg32.rcap32 = FUNC7(rcap);
	} else {
		c.action_to_len16 =
		    FUNC7(FUNC5(FW_PORT_ACTION_L1_CFG) |
			    FUNC1(c));
		c.u.l1cfg.rcap = FUNC7(FUNC9(rcap));
	}

	return FUNC13(adap, mbox, &c, sizeof(c), NULL);
}