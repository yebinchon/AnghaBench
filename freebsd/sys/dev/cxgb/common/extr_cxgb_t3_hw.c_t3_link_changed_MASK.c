#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct link_config {int link_ok; int speed; int duplex; int fc; int requested_fc; scalar_t__ autoneg; } ;
struct TYPE_15__ {int /*<<< orphan*/  link_faults; } ;
struct cmac {scalar_t__ was_reset; scalar_t__ offset; TYPE_2__ stats; } ;
struct cphy {int rst; TYPE_1__* ops; } ;
struct port_info {scalar_t__ link_fault; int /*<<< orphan*/  port_id; struct link_config link_config; struct cmac mac; struct cphy phy; } ;
struct TYPE_16__ {int nports; scalar_t__ rev; } ;
struct TYPE_17__ {TYPE_3__ params; } ;
typedef  TYPE_4__ adapter_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* reset ) (struct cphy*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_link_status ) (struct cphy*,int*,int*,int*,int*) ;} ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ A_XGM_INT_ENABLE ; 
 scalar_t__ A_XGM_RX_CTRL ; 
 scalar_t__ A_XGM_STAT_CTRL ; 
 scalar_t__ A_XGM_TXFIFO_CFG ; 
 scalar_t__ A_XGM_TX_CTRL ; 
 scalar_t__ A_XGM_XAUI_ACT_CTRL ; 
 int DUPLEX_INVALID ; 
 int F_CLRSTATS ; 
 int F_ENDROPPKT ; 
 int F_RXEN ; 
 int F_TXACTENABLE ; 
 int F_TXEN ; 
 int F_XGM_INT ; 
 scalar_t__ LF_MAYBE ; 
 void* LF_NO ; 
 scalar_t__ LF_YES ; 
 int MAC_DIRECTION_RX ; 
 int MAC_DIRECTION_TX ; 
 int PAUSE_AUTONEG ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 int PHY_LINK_PARTIAL ; 
 int PHY_LINK_UP ; 
 int SPEED_INVALID ; 
 scalar_t__ T3_REV_C ; 
 struct port_info* FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cmac*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cmac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC13 (struct cmac*) ; 
 scalar_t__ FUNC14 (TYPE_4__*) ; 

void FUNC15(adapter_t *adapter, int port_id)
{
	int link_ok, speed, duplex, fc, link_fault, link_state;
	struct port_info *pi = FUNC0(adapter, port_id);
	struct cphy *phy = &pi->phy;
	struct cmac *mac = &pi->mac;
	struct link_config *lc = &pi->link_config;

	link_ok = lc->link_ok;
	speed = lc->speed;
	duplex = lc->duplex;
	fc = lc->fc;
	link_fault = 0;

	phy->ops->get_link_status(phy, &link_state, &speed, &duplex, &fc);
	link_ok = (link_state == PHY_LINK_UP);
	if (link_state != PHY_LINK_PARTIAL)
		phy->rst = 0;
	else if (++phy->rst == 3) {
		phy->ops->reset(phy, 0);
		phy->rst = 0;
	}

	if (link_ok == 0)
		pi->link_fault = LF_NO;

	if (lc->requested_fc & PAUSE_AUTONEG)
		fc &= lc->requested_fc;
	else
		fc = lc->requested_fc & (PAUSE_RX | PAUSE_TX);

	/* Update mac speed before checking for link fault. */
	if (link_ok && speed >= 0 && lc->autoneg == AUTONEG_ENABLE &&
	    (speed != lc->speed || duplex != lc->duplex || fc != lc->fc))
		FUNC7(mac, speed, duplex, fc);

	/*
	 * Check for link faults if any of these is true:
	 * a) A link fault is suspected, and PHY says link ok
	 * b) PHY link transitioned from down -> up
	 */
	if (adapter->params.nports <= 2 &&
	    ((pi->link_fault && link_ok) || (!lc->link_ok && link_ok))) {

		link_fault = FUNC4(adapter, port_id);
		if (link_fault) {
			if (pi->link_fault != LF_YES) {
				mac->stats.link_faults++;
				pi->link_fault = LF_YES;
			}

			if (FUNC14(adapter)) {
				if (adapter->params.rev >= T3_REV_C)
					FUNC13(mac);
				else
					FUNC12(mac);
			}

			/* Don't report link up */
			link_ok = 0;
		} else {
			/* clear faults here if this was a false alarm. */
			if (pi->link_fault == LF_MAYBE &&
			    link_ok && lc->link_ok)
				FUNC3(adapter, port_id);

			pi->link_fault = LF_NO;
		}
	}

	if (link_ok == lc->link_ok && speed == lc->speed &&
	    duplex == lc->duplex && fc == lc->fc)
		return;                            /* nothing changed */

	lc->link_ok = (unsigned char)link_ok;
	lc->speed = speed < 0 ? SPEED_INVALID : speed;
	lc->duplex = duplex < 0 ? DUPLEX_INVALID : duplex;
	lc->fc = fc;

	if (link_ok) {

		/* down -> up, or up -> up with changed settings */

		if (adapter->params.rev > 0 && FUNC14(adapter)) {

			if (adapter->params.rev >= T3_REV_C)
				FUNC13(mac);
			else
				FUNC12(mac);

			FUNC10(adapter, A_XGM_XAUI_ACT_CTRL + mac->offset,
				     F_TXACTENABLE | F_RXEN);
		}

		/* disable TX FIFO drain */
		FUNC9(adapter, A_XGM_TXFIFO_CFG + mac->offset,
				 F_ENDROPPKT, 0);

		FUNC6(mac, MAC_DIRECTION_TX | MAC_DIRECTION_RX);
		FUNC9(adapter, A_XGM_STAT_CTRL + mac->offset,
				 F_CLRSTATS, 1);
		FUNC3(adapter, port_id);

	} else {

		/* up -> down */

		if (adapter->params.rev > 0 && FUNC14(adapter)) {
			FUNC10(adapter,
				     A_XGM_XAUI_ACT_CTRL + mac->offset, 0);
		}

		FUNC11(adapter, pi->port_id);
		if (adapter->params.nports <= 2) {
			FUNC9(adapter,
					 A_XGM_INT_ENABLE + mac->offset,
					 F_XGM_INT, 0);

			FUNC5(mac, MAC_DIRECTION_RX);

			/*
			 * Make sure Tx FIFO continues to drain, even as rxen is
			 * left high to help detect and indicate remote faults.
			 */
			FUNC9(adapter,
			    A_XGM_TXFIFO_CFG + mac->offset, 0, F_ENDROPPKT);
			FUNC10(adapter, A_XGM_RX_CTRL + mac->offset, 0);
			FUNC10(adapter,
			    A_XGM_TX_CTRL + mac->offset, F_TXEN);
			FUNC10(adapter,
			    A_XGM_RX_CTRL + mac->offset, F_RXEN);
		}
	}

	FUNC8(adapter, port_id, link_ok, speed, duplex, fc,
	    mac->was_reset);
	mac->was_reset = 0;
}