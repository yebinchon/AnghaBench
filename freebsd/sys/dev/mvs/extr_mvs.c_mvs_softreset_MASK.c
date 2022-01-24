#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int target_id; int /*<<< orphan*/  timeout; int /*<<< orphan*/  status; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int uint8_t ;
struct mvs_channel {int /*<<< orphan*/  r_mem; scalar_t__ pm_present; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ATA_A_RESET ; 
 int /*<<< orphan*/  ATA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int ATA_S_BUSY ; 
 int ATA_S_DRQ ; 
 int ATA_S_ERROR ; 
 int /*<<< orphan*/  CAM_ATA_STATUS_ERROR ; 
 int /*<<< orphan*/  CAM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MVS_EDMA_OFF ; 
 int /*<<< orphan*/  SATA_SATAICTL ; 
 int SATA_SATAICTL_PMPTX_SHIFT ; 
 struct mvs_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,union ccb*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(device_t dev, union ccb *ccb)
{
	struct mvs_channel *ch = FUNC2(dev);
	int port = ccb->ccb_h.target_id & 0x0f;
	int i, stuck;
	uint8_t status;

	FUNC4(dev, MVS_EDMA_OFF);
	FUNC0(ch->r_mem, SATA_SATAICTL, port << SATA_SATAICTL_PMPTX_SHIFT);
	FUNC0(ch->r_mem, ATA_CONTROL, ATA_A_RESET);
	FUNC1(10000);
	FUNC0(ch->r_mem, ATA_CONTROL, 0);
	ccb->ccb_h.status &= ~CAM_STATUS_MASK;
	/* Wait for clearing busy status. */
	if ((i = FUNC6(dev, 0, ATA_S_BUSY, ccb->ccb_h.timeout)) < 0) {
		ccb->ccb_h.status |= CAM_CMD_TIMEOUT;
		stuck = 1;
	} else {
		status = FUNC3(dev, 0);
		if (status & ATA_S_ERROR)
			ccb->ccb_h.status |= CAM_ATA_STATUS_ERROR;
		else
			ccb->ccb_h.status |= CAM_REQ_CMP;
		if (status & ATA_S_DRQ)
			stuck = 1;
		else
			stuck = 0;
	}
	FUNC5(dev, ccb);

	/*
	 * XXX: If some device on PMP failed to soft-reset,
	 * try to recover by sending dummy soft-reset to PMP.
	 */
	if (stuck && ch->pm_present && port != 15) {
		FUNC0(ch->r_mem, SATA_SATAICTL,
		    15 << SATA_SATAICTL_PMPTX_SHIFT);
		FUNC0(ch->r_mem, ATA_CONTROL, ATA_A_RESET);
		FUNC1(10000);
		FUNC0(ch->r_mem, ATA_CONTROL, 0);
		FUNC6(dev, 0, ATA_S_BUSY | ATA_S_DRQ, ccb->ccb_h.timeout);
	}

	FUNC7(ccb);
}