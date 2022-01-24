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
typedef  int uint32_t ;
struct via_info {scalar_t__ polling; TYPE_2__* rch; TYPE_1__* pch; int /*<<< orphan*/  lock; scalar_t__ dma_eol_wake; } ;
struct TYPE_4__ {scalar_t__ active; int rbase; int /*<<< orphan*/ * channel; } ;
struct TYPE_3__ {scalar_t__ active; int rbase; int /*<<< orphan*/ * channel; } ;

/* Variables and functions */
 int NDXSCHANS ; 
 int NMSGDCHANS ; 
 int NWRCHANS ; 
 int SGD_CONTROL_AUTOSTART ; 
 int SGD_CONTROL_I_EOL ; 
 int SGD_CONTROL_I_FLAG ; 
 int SGD_CONTROL_START ; 
 int SGD_STATUS_ACTIVE ; 
 int SGD_STATUS_EOL ; 
 int SGD_STATUS_INTR ; 
 int VIA_RP_CONTROL ; 
 int VIA_RP_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct via_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct via_info*,int,int,int) ; 

__attribute__((used)) static void
FUNC5(void *p)
{
	struct via_info *via = p;
	uint32_t ptrigger = 0, rtrigger = 0;
	int i, reg, stat;

	FUNC1(via->lock);
	if (via->polling != 0) {
		FUNC2(via->lock);
		return;
	}
	/* Poll playback channels */
	for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++) {
		if (via->pch[i].channel == NULL || via->pch[i].active == 0)
			continue;
		reg = via->pch[i].rbase + VIA_RP_STATUS;
		stat = FUNC3(via, reg, 1);
		if (stat & SGD_STATUS_INTR) {
			if (via->dma_eol_wake && ((stat & SGD_STATUS_EOL) ||
			    !(stat & SGD_STATUS_ACTIVE)))
				FUNC4(via, via->pch[i].rbase + VIA_RP_CONTROL,
				    SGD_CONTROL_START | SGD_CONTROL_AUTOSTART |
				    SGD_CONTROL_I_EOL | SGD_CONTROL_I_FLAG, 1);
			FUNC4(via, reg, stat, 1);
			ptrigger |= 1 << i;
		}
	}
	/* Poll record channels */
	for (i = 0; i < NWRCHANS; i++) {
		if (via->rch[i].channel == NULL || via->rch[i].active == 0)
			continue;
		reg = via->rch[i].rbase + VIA_RP_STATUS;
		stat = FUNC3(via, reg, 1);
		if (stat & SGD_STATUS_INTR) {
			if (via->dma_eol_wake && ((stat & SGD_STATUS_EOL) ||
			    !(stat & SGD_STATUS_ACTIVE)))
				FUNC4(via, via->rch[i].rbase + VIA_RP_CONTROL,
				    SGD_CONTROL_START | SGD_CONTROL_AUTOSTART |
				    SGD_CONTROL_I_EOL | SGD_CONTROL_I_FLAG, 1);
			FUNC4(via, reg, stat, 1);
			rtrigger |= 1 << i;
		}
	}
	FUNC2(via->lock);

	for (i = 0; i < NDXSCHANS + NMSGDCHANS; i++) {
		if (ptrigger & (1 << i))
			FUNC0(via->pch[i].channel);
	}
	for (i = 0; i < NWRCHANS; i++) {
		if (rtrigger & (1 << i))
			FUNC0(via->rch[i].channel);
	}
}