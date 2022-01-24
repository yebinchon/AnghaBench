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
typedef  int uint32_t ;
struct mvs_channel {int curr_mode; int fbs_enabled; int quirks; int /*<<< orphan*/  r_mem; scalar_t__ pm_present; scalar_t__ fake_busy; } ;
typedef  enum mvs_edma_mode { ____Placeholder_mvs_edma_mode } mvs_edma_mode ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EDMA_CFG ; 
 int EDMA_CFG_ECUTTHROUGHEN ; 
 int EDMA_CFG_EEARLYCOMPLETIONEN ; 
 int EDMA_CFG_EEDMAFBS ; 
 int EDMA_CFG_EHOSTQUEUECACHEEN ; 
 int EDMA_CFG_EMASKRXPM ; 
 int EDMA_CFG_EQUE ; 
 int EDMA_CFG_ERDBSZ ; 
 int EDMA_CFG_ERDBSZEXT ; 
 int EDMA_CFG_ESATANATVCMDQUE ; 
 int EDMA_CFG_EWRBUFFERLEN ; 
 int EDMA_CFG_RESERVED ; 
 int EDMA_CFG_RESERVED2 ; 
 int /*<<< orphan*/  EDMA_CMD ; 
 int EDMA_CMD_EDSEDMA ; 
 int EDMA_CMD_EENEDMA ; 
 int /*<<< orphan*/  EDMA_HC ; 
 int EDMA_IE_EDEVERR ; 
 int /*<<< orphan*/  EDMA_UNKN_RESD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MVS_EDMA_NCQ ; 
 scalar_t__ MVS_EDMA_OFF ; 
 int MVS_EDMA_QUEUED ; 
 int MVS_Q_CT ; 
 int MVS_Q_GENI ; 
 int MVS_Q_GENII ; 
 int MVS_Q_GENIIE ; 
 int /*<<< orphan*/  SATA_FISC ; 
 int SATA_FISC_FISDMAACTIVATESYNCRESP ; 
 int SATA_FISC_FISWAIT4HOSTRDYEN_B0 ; 
 int /*<<< orphan*/  SATA_LTM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mvs_channel* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_t dev, enum mvs_edma_mode mode)
{
	struct mvs_channel *ch = FUNC5(dev);
	int timeout;
	uint32_t ecfg, fcfg, hc, ltm, unkn;

	if (mode == ch->curr_mode)
		return;
	/* If we are running, we should stop first. */
	if (ch->curr_mode != MVS_EDMA_OFF) {
		FUNC1(ch->r_mem, EDMA_CMD, EDMA_CMD_EDSEDMA);
		timeout = 0;
		while (FUNC0(ch->r_mem, EDMA_CMD) & EDMA_CMD_EENEDMA) {
			FUNC2(1000);
			if (timeout++ > 1000) {
				FUNC6(dev, "stopping EDMA engine failed\n");
				break;
			}
		}
	}
	ch->curr_mode = mode;
	ch->fbs_enabled = 0;
	ch->fake_busy = 0;
	/* Report mode to controller. Needed for correct CCC operation. */
	FUNC3(FUNC4(dev), dev, mode);
	/* Configure new mode. */
	ecfg = EDMA_CFG_RESERVED | EDMA_CFG_RESERVED2 | EDMA_CFG_EHOSTQUEUECACHEEN;
	if (ch->pm_present) {
		ecfg |= EDMA_CFG_EMASKRXPM;
		if (ch->quirks & MVS_Q_GENIIE) {
			ecfg |= EDMA_CFG_EEDMAFBS;
			ch->fbs_enabled = 1;
		}
	}
	if (ch->quirks & MVS_Q_GENI)
		ecfg |= EDMA_CFG_ERDBSZ;
	else if (ch->quirks & MVS_Q_GENII)
		ecfg |= EDMA_CFG_ERDBSZEXT | EDMA_CFG_EWRBUFFERLEN;
	if (ch->quirks & MVS_Q_CT)
		ecfg |= EDMA_CFG_ECUTTHROUGHEN;
	if (mode != MVS_EDMA_OFF)
		ecfg |= EDMA_CFG_EEARLYCOMPLETIONEN;
	if (mode == MVS_EDMA_QUEUED)
		ecfg |= EDMA_CFG_EQUE;
	else if (mode == MVS_EDMA_NCQ)
		ecfg |= EDMA_CFG_ESATANATVCMDQUE;
	FUNC1(ch->r_mem, EDMA_CFG, ecfg);
	FUNC7(dev);
	if (ch->quirks & MVS_Q_GENIIE) {
		/* Configure FBS-related registers */
		fcfg = FUNC0(ch->r_mem, SATA_FISC);
		ltm = FUNC0(ch->r_mem, SATA_LTM);
		hc = FUNC0(ch->r_mem, EDMA_HC);
		if (ch->fbs_enabled) {
			fcfg |= SATA_FISC_FISDMAACTIVATESYNCRESP;
			if (mode == MVS_EDMA_NCQ) {
				fcfg &= ~SATA_FISC_FISWAIT4HOSTRDYEN_B0;
				hc &= ~EDMA_IE_EDEVERR;
			} else {
				fcfg |= SATA_FISC_FISWAIT4HOSTRDYEN_B0;
				hc |= EDMA_IE_EDEVERR;
			}
			ltm |= (1 << 8);
		} else {
			fcfg &= ~SATA_FISC_FISDMAACTIVATESYNCRESP;
			fcfg &= ~SATA_FISC_FISWAIT4HOSTRDYEN_B0;
			hc |= EDMA_IE_EDEVERR;
			ltm &= ~(1 << 8);
		}
		FUNC1(ch->r_mem, SATA_FISC, fcfg);
		FUNC1(ch->r_mem, SATA_LTM, ltm);
		FUNC1(ch->r_mem, EDMA_HC, hc);
		/* This is some magic, required to handle several DRQs
		 * with basic DMA. */
		unkn = FUNC0(ch->r_mem, EDMA_UNKN_RESD);
		if (mode == MVS_EDMA_OFF)
			unkn |= 1;
		else
			unkn &= ~1;
		FUNC1(ch->r_mem, EDMA_UNKN_RESD, unkn);
	}
	/* Run EDMA. */
	if (mode != MVS_EDMA_OFF)
		FUNC1(ch->r_mem, EDMA_CMD, EDMA_CMD_EENEDMA);
}