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
struct es_info {int sctrl; int ctrl; int /*<<< orphan*/  dev; scalar_t__ num; int /*<<< orphan*/  escfg; } ;

/* Variables and functions */
 int CT4730_PCI_ID ; 
 int CT5880REV_CT5880_C ; 
 int CT5880REV_CT5880_D ; 
 int CT5880REV_CT5880_E ; 
 int CT5880_PCI_ID ; 
 int CTRL_JYSTK_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ES1370_REG_CONTROL ; 
 int /*<<< orphan*/  ES1370_REG_SERIAL_CONTROL ; 
 int /*<<< orphan*/  ES1370_REG_STATUS ; 
 int ES1371REV_CT5880_A ; 
 int ES1371REV_ES1373_8 ; 
 int ES1371_DIS_SRC ; 
 int ES1371_PCI_ID ; 
 int /*<<< orphan*/  ES1371_REG_CODEC ; 
 int /*<<< orphan*/  ES1371_REG_LEGACY ; 
 int /*<<< orphan*/  ES1371_REG_SMPRATE ; 
 int ES1371_SYNC_RES ; 
 int /*<<< orphan*/  ES_ADC ; 
 int /*<<< orphan*/  ES_DAC1 ; 
 int /*<<< orphan*/  ES_DAC2 ; 
 int /*<<< orphan*/  FUNC1 (struct es_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ES_SMPREG_DAC1 ; 
 int ES_SMPREG_DAC2 ; 
 int ES_SMPREG_INT_REGS ; 
 int ES_SMPREG_TRUNC_N ; 
 int ES_SMPREG_VOL_ADC ; 
 int ES_SMPREG_VOL_DAC1 ; 
 int ES_SMPREG_VOL_DAC2 ; 
 int /*<<< orphan*/  FUNC3 (struct es_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct es_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct es_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct es_info*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct es_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct es_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(struct es_info *es)
{
	uint32_t cssr, devid, revid, subdev;
	int idx;

	FUNC1(es);
	/* This is NOT ES1370 */
	es->escfg = FUNC2(es->escfg, 0);
	es->num = 0;
	es->sctrl = 0;
	cssr = 0;
	devid = FUNC9(es->dev);
	revid = FUNC10(es->dev);
	subdev = (FUNC11(es->dev) << 16) |
	    FUNC12(es->dev);
	/*
	 * Joyport blacklist. Either we're facing with broken hardware
	 * or because this hardware need special (unknown) initialization
	 * procedures.
	 */
	switch (subdev) {
	case 0x20001274:	/* old Ensoniq */
		es->ctrl = 0;
		break;
	default:
		es->ctrl = CTRL_JYSTK_EN;
		break;
	}
	if (devid == CT4730_PCI_ID) {
		/* XXX amplifier hack? */
		es->ctrl |= (1 << 16);
	}
	/* initialize the chips */
	FUNC8(es, ES1370_REG_CONTROL, es->ctrl, 4);
	FUNC8(es, ES1370_REG_SERIAL_CONTROL, es->sctrl, 4);
	FUNC8(es, ES1371_REG_LEGACY, 0, 4);
	if ((devid == ES1371_PCI_ID && revid == ES1371REV_ES1373_8) ||
	    (devid == ES1371_PCI_ID && revid == ES1371REV_CT5880_A) ||
	    (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_C) ||
	    (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_D) ||
	    (devid == CT5880_PCI_ID && revid == CT5880REV_CT5880_E)) {
		cssr = 1 << 29;
		FUNC8(es, ES1370_REG_STATUS, cssr, 4);
		FUNC0(20000);
	}
	/* AC'97 warm reset to start the bitclk */
	FUNC8(es, ES1370_REG_CONTROL, es->ctrl, 4);
	FUNC8(es, ES1371_REG_LEGACY, ES1371_SYNC_RES, 4);
	FUNC0(2000);
	FUNC8(es, ES1370_REG_CONTROL, es->sctrl, 4);
	FUNC7(es);
	/* Init the sample rate converter */
	FUNC8(es, ES1371_REG_SMPRATE, ES1371_DIS_SRC, 4);
	for (idx = 0; idx < 0x80; idx++)
		FUNC6(es, idx, 0);
	FUNC6(es, ES_SMPREG_DAC1 + ES_SMPREG_TRUNC_N, 16 << 4);
	FUNC6(es, ES_SMPREG_DAC1 + ES_SMPREG_INT_REGS, 16 << 10);
	FUNC6(es, ES_SMPREG_DAC2 + ES_SMPREG_TRUNC_N, 16 << 4);
	FUNC6(es, ES_SMPREG_DAC2 + ES_SMPREG_INT_REGS, 16 << 10);
	FUNC6(es, ES_SMPREG_VOL_ADC, 1 << 12);
	FUNC6(es, ES_SMPREG_VOL_ADC + 1, 1 << 12);
	FUNC6(es, ES_SMPREG_VOL_DAC1, 1 << 12);
	FUNC6(es, ES_SMPREG_VOL_DAC1 + 1, 1 << 12);
	FUNC6(es, ES_SMPREG_VOL_DAC2, 1 << 12);
	FUNC6(es, ES_SMPREG_VOL_DAC2 + 1, 1 << 12);
	FUNC4(es, 22050, ES_ADC);
	FUNC5(es, 22050, ES_DAC1);
	FUNC5(es, 22050, ES_DAC2);
	/*
	 * WARNING:
	 * enabling the sample rate converter without properly programming
	 * its parameters causes the chip to lock up (the SRC busy bit will
	 * be stuck high, and I've found no way to rectify this other than
	 * power cycle)
	 */
	FUNC7(es);
	FUNC8(es, ES1371_REG_SMPRATE, 0, 4);
	/* try to reset codec directly */
	FUNC8(es, ES1371_REG_CODEC, 0, 4);
	FUNC8(es, ES1370_REG_STATUS, cssr, 4);
	FUNC3(es);

	return (0);
}