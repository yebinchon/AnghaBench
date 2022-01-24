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
struct TYPE_6__ {int hash; scalar_t__ newvlan; int nat_mode; scalar_t__ action; scalar_t__ hitcnts; scalar_t__ nat_seq_chk; scalar_t__ newsmac; scalar_t__ newdmac; } ;
struct filter_entry {scalar_t__ tid; int pending; scalar_t__ valid; TYPE_3__ fs; TYPE_2__* smt; } ;
struct TYPE_4__ {scalar_t__ ntids; } ;
struct adapter {TYPE_1__ tids; } ;
struct TYPE_5__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ FILTER_DROP ; 
 scalar_t__ FILTER_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ M_TCB_RCV_NXT ; 
 int /*<<< orphan*/  M_TCB_SMAC_SEL ; 
 unsigned long long M_TCB_TIMESTAMP ; 
 unsigned long long M_TCB_T_RTT_TS_RECENT_AGE ; 
#define  NAT_MODE_ALL 135 
#define  NAT_MODE_DIP 134 
#define  NAT_MODE_DIP_DP 133 
#define  NAT_MODE_DIP_DP_SIP 132 
#define  NAT_MODE_DIP_DP_SP 131 
#define  NAT_MODE_DIP_SIP_SP 130 
#define  NAT_MODE_NONE 129 
#define  NAT_MODE_SIP_SP 128 
 int /*<<< orphan*/  S_TF_CCTRL_CWR ; 
 int /*<<< orphan*/  S_TF_CCTRL_ECE ; 
 int /*<<< orphan*/  S_TF_CCTRL_ECN ; 
 int /*<<< orphan*/  S_TF_CCTRL_RFR ; 
 scalar_t__ VLAN_INSERT ; 
 scalar_t__ VLAN_REWRITE ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long long) ; 
 int FUNC4 (unsigned long long) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  W_TCB_RCV_NXT ; 
 int /*<<< orphan*/  W_TCB_SMAC_SEL ; 
 int /*<<< orphan*/  W_TCB_TIMESTAMP ; 
 int /*<<< orphan*/  W_TCB_T_FLAGS ; 
 scalar_t__ FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,struct filter_entry*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC11(struct adapter *sc, struct filter_entry *f)
{
	int updated = 0;

	FUNC0(f->tid < sc->tids.ntids);
	FUNC0(f->fs.hash);
	FUNC0(f->pending);
	FUNC0(f->valid == 0);

	if (f->fs.newdmac) {
		FUNC10(sc, f->tid, S_TF_CCTRL_ECE, 1, 1);
		updated++;
	}

	if (f->fs.newvlan == VLAN_INSERT || f->fs.newvlan == VLAN_REWRITE) {
		FUNC10(sc, f->tid, S_TF_CCTRL_RFR, 1, 1);
		updated++;
	}

	if (f->fs.newsmac) {
		FUNC0(f->smt != NULL);
		FUNC10(sc, f->tid, S_TF_CCTRL_CWR, 1, 1);
		FUNC9(sc, f->tid, W_TCB_SMAC_SEL,
		    FUNC2(M_TCB_SMAC_SEL), FUNC2(f->smt->idx),
		    1);
		updated++;
	}

	switch(f->fs.nat_mode) {
	case NAT_MODE_NONE:
		break;
	case NAT_MODE_DIP:
		FUNC8(sc, f, true, false, false, false);
		updated++;
		break;
	case NAT_MODE_DIP_DP:
		FUNC8(sc, f, true, false, true, false);
		updated++;
		break;
	case NAT_MODE_DIP_DP_SIP:
		FUNC8(sc, f, true, true, true, false);
		updated++;
		break;
	case NAT_MODE_DIP_DP_SP:
		FUNC8(sc, f, true, false, true, true);
		updated++;
		break;
	case NAT_MODE_SIP_SP:
		FUNC8(sc, f, false, true, false, true);
		updated++;
		break;
	case NAT_MODE_DIP_SIP_SP:
		FUNC8(sc, f, true, true, false, true);
		updated++;
		break;
	case NAT_MODE_ALL:
		FUNC8(sc, f, true, true, true, true);
		updated++;
		break;
	default:
		FUNC0(0);	/* should have been validated earlier */
		break;

	}

	if (f->fs.nat_seq_chk) {
		FUNC9(sc, f->tid, W_TCB_RCV_NXT,
		    FUNC1(M_TCB_RCV_NXT),
		    FUNC1(f->fs.nat_seq_chk), 1);
		updated++;
	}

	if (FUNC7(sc) && f->fs.action == FILTER_DROP) {
		/*
		 * Migrating = 1, Non-offload = 0 to get a T5 hashfilter to drop.
		 */
		FUNC9(sc, f->tid, W_TCB_T_FLAGS, FUNC6(1) |
		    FUNC5(1), FUNC5(1), 1);
		updated++;
	}

	/*
	 * Enable switching after all secondary resources (L2T entry, SMT entry,
	 * etc.) are setup so that any switched packet will use correct
	 * values.
	 */
	if (f->fs.action == FILTER_SWITCH) {
		FUNC10(sc, f->tid, S_TF_CCTRL_ECN, 1, 1);
		updated++;
	}

	if (f->fs.hitcnts || updated > 0) {
		FUNC9(sc, f->tid, W_TCB_TIMESTAMP,
		    FUNC3(M_TCB_TIMESTAMP) |
		    FUNC4(M_TCB_T_RTT_TS_RECENT_AGE),
		    FUNC3(0ULL) | FUNC4(0ULL), 0);
		return (EINPROGRESS);
	}

	return (0);
}