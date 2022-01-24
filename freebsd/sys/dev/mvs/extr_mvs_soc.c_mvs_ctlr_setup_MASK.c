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
struct mvs_controller {int ccc; int cccc; int gmim; int pmim; int /*<<< orphan*/  r_mem; int /*<<< orphan*/  channels; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHIP_SOC_MIC ; 
 int /*<<< orphan*/  CHIP_SOC_MIM ; 
 int /*<<< orphan*/  HC_IC ; 
 int /*<<< orphan*/  HC_ICT ; 
 int /*<<< orphan*/  HC_ITT ; 
 int IC_DONE_HC0 ; 
 int IC_ERR_HC0 ; 
 int IC_HC0_COAL_DONE ; 
 scalar_t__ bootverbose ; 
 struct mvs_controller* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct mvs_controller *ctlr = FUNC2(dev);
	int ccc = ctlr->ccc, cccc = ctlr->cccc, ccim = 0;

	/* Mask chip interrupts */
	FUNC0(ctlr->r_mem, CHIP_SOC_MIM, 0x00000000);
	/* Clear HC interrupts */
	FUNC0(ctlr->r_mem, HC_IC, 0x00000000);
	/* Clear chip interrupts */
	FUNC0(ctlr->r_mem, CHIP_SOC_MIC, 0);
	/* Configure per-HC CCC */
	if (ccc && bootverbose) {
		FUNC3(dev,
		    "CCC with %dus/%dcmd enabled\n",
		    ctlr->ccc, ctlr->cccc);
	}
	ccc *= 150;
	FUNC0(ctlr->r_mem, HC_ICT, cccc);
	FUNC0(ctlr->r_mem, HC_ITT, ccc);
	if (ccc)
		ccim |= IC_HC0_COAL_DONE;
	/* Enable chip interrupts */
	ctlr->gmim = ((ccc ? IC_HC0_COAL_DONE :
	    (IC_DONE_HC0 & FUNC1(ctlr->channels))) |
	    (IC_ERR_HC0 & FUNC1(ctlr->channels)));
	FUNC0(ctlr->r_mem, CHIP_SOC_MIM, ctlr->gmim | ctlr->pmim);
	return (0);
}