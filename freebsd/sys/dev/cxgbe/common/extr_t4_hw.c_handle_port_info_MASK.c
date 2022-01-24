#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct link_config {int advertising; int link_ok; scalar_t__ speed; unsigned char fc; unsigned char fec; int fec_hint; void* supported; int /*<<< orphan*/  link_down_rc; void* lp_advertising; } ;
struct port_info {int port_type; int mod_type; int mdio_addr; int /*<<< orphan*/  adapter; struct link_config link_cfg; } ;
struct TYPE_5__ {int /*<<< orphan*/  linkattr32; int /*<<< orphan*/  lpacaps32; int /*<<< orphan*/  acaps32; int /*<<< orphan*/  pcaps32; int /*<<< orphan*/  lstatus32_to_cbllen32; } ;
struct TYPE_4__ {int /*<<< orphan*/  lpacap; int /*<<< orphan*/  acap; int /*<<< orphan*/  pcap; int /*<<< orphan*/  lstatus_to_modtype; } ;
struct TYPE_6__ {TYPE_2__ info32; TYPE_1__ info; } ;
struct fw_port_cmd {TYPE_3__ u; } ;
typedef  enum fw_port_action { ____Placeholder_fw_port_action } fw_port_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned char FEC_BASER_RS ; 
 unsigned char FEC_NONE ; 
 unsigned char FEC_RS ; 
 int FW_PORT_ACTION_GET_PORT_INFO ; 
 int FW_PORT_ACTION_GET_PORT_INFO32 ; 
 int FW_PORT_CAP32_FC_RX ; 
 int FW_PORT_CAP32_FC_TX ; 
 int FW_PORT_CAP32_FEC_BASER_RS ; 
 int FW_PORT_CAP32_FEC_RS ; 
 int FW_PORT_MOD_TYPE_NONE ; 
 int F_FW_PORT_CMD_LSTATUS ; 
 int F_FW_PORT_CMD_LSTATUS32 ; 
 int F_FW_PORT_CMD_MDIOCAP ; 
 int F_FW_PORT_CMD_MDIOCAP32 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  M_FW_PORT_CAP32_FEC ; 
 unsigned char PAUSE_RX ; 
 unsigned char PAUSE_TX ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct port_info *pi, const struct fw_port_cmd *p,
    enum fw_port_action action, bool *mod_changed, bool *link_changed)
{
	struct link_config old_lc, *lc = &pi->link_cfg;
	unsigned char fc, fec;
	u32 stat, linkattr;
	int old_ptype, old_mtype;

	old_ptype = pi->port_type;
	old_mtype = pi->mod_type;
	old_lc = *lc;
	if (action == FW_PORT_ACTION_GET_PORT_INFO) {
		stat = FUNC11(p->u.info.lstatus_to_modtype);

		pi->port_type = FUNC8(stat);
		pi->mod_type = FUNC5(stat);
		pi->mdio_addr = stat & F_FW_PORT_CMD_MDIOCAP ?
		    FUNC3(stat) : -1;

		lc->supported = FUNC13(FUNC10(p->u.info.pcap));
		lc->advertising = FUNC13(FUNC10(p->u.info.acap));
		lc->lp_advertising = FUNC13(FUNC10(p->u.info.lpacap));
		lc->link_ok = (stat & F_FW_PORT_CMD_LSTATUS) != 0;
		lc->link_down_rc = FUNC1(stat);

		linkattr = FUNC14(stat);
	} else if (action == FW_PORT_ACTION_GET_PORT_INFO32) {
		stat = FUNC11(p->u.info32.lstatus32_to_cbllen32);

		pi->port_type = FUNC7(stat);
		pi->mod_type = FUNC6(stat);
		pi->mdio_addr = stat & F_FW_PORT_CMD_MDIOCAP32 ?
		    FUNC4(stat) : -1;

		lc->supported = FUNC11(p->u.info32.pcaps32);
		lc->advertising = FUNC11(p->u.info32.acaps32);
		lc->lp_advertising = FUNC11(p->u.info32.lpacaps32);
		lc->link_ok = (stat & F_FW_PORT_CMD_LSTATUS32) != 0;
		lc->link_down_rc = FUNC2(stat);

		linkattr = FUNC11(p->u.info32.linkattr32);
	} else {
		FUNC0(pi->adapter, "bad port_info action 0x%x\n", action);
		return;
	}

	lc->speed = FUNC12(linkattr);

	fc = 0;
	if (linkattr & FW_PORT_CAP32_FC_RX)
		fc |= PAUSE_RX;
	if (linkattr & FW_PORT_CAP32_FC_TX)
		fc |= PAUSE_TX;
	lc->fc = fc;

	fec = FEC_NONE;
	if (linkattr & FW_PORT_CAP32_FEC_RS)
		fec |= FEC_RS;
	if (linkattr & FW_PORT_CAP32_FEC_BASER_RS)
		fec |= FEC_BASER_RS;
	lc->fec = fec;

	if (mod_changed != NULL)
		*mod_changed = false;
	if (link_changed != NULL)
		*link_changed = false;
	if (old_ptype != pi->port_type || old_mtype != pi->mod_type ||
	    old_lc.supported != lc->supported) {
		if (pi->mod_type != FW_PORT_MOD_TYPE_NONE) {
			lc->fec_hint = lc->advertising &
			    FUNC9(M_FW_PORT_CAP32_FEC);
		}
		if (mod_changed != NULL)
			*mod_changed = true;
	}
	if (old_lc.link_ok != lc->link_ok || old_lc.speed != lc->speed ||
	    old_lc.fec != lc->fec || old_lc.fc != lc->fc) {
		if (link_changed != NULL)
			*link_changed = true;
	}
}