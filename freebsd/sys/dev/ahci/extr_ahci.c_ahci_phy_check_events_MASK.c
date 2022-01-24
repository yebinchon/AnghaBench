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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int u_int32_t ;
struct ahci_channel {scalar_t__ pm_level; int /*<<< orphan*/  sim; int /*<<< orphan*/  dev; int /*<<< orphan*/  r_mem; scalar_t__ listening; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_SSTS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ATA_SE_EXCHANGED ; 
 int ATA_SE_PHY_CHANGED ; 
 int ATA_SS_DET_MASK ; 
 int ATA_SS_DET_NO_DEVICE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 union ccb* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static int
FUNC8(struct ahci_channel *ch, u_int32_t serr)
{

	if (((ch->pm_level == 0) && (serr & ATA_SE_PHY_CHANGED)) ||
	    ((ch->pm_level != 0 || ch->listening) && (serr & ATA_SE_EXCHANGED))) {
		u_int32_t status = FUNC0(ch->r_mem, AHCI_P_SSTS);
		union ccb *ccb;

		if (bootverbose) {
			if ((status & ATA_SS_DET_MASK) != ATA_SS_DET_NO_DEVICE)
				FUNC3(ch->dev, "CONNECT requested\n");
			else
				FUNC3(ch->dev, "DISCONNECT requested\n");
		}
		FUNC1(ch);
		if ((ccb = FUNC4()) == NULL)
			return (0);
		if (FUNC5(&ccb->ccb_h.path, NULL,
		    FUNC2(ch->sim),
		    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
			FUNC6(ccb);
			return (0);
		}
		FUNC7(ccb);
		return (1);
	}
	return (0);
}