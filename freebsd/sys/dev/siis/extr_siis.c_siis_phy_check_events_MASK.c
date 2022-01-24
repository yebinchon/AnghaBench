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
struct siis_channel {scalar_t__ pm_level; int /*<<< orphan*/  sim; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ATA_SS_DET_MASK ; 
 int ATA_SS_DET_PHY_ONLINE ; 
 int ATA_SS_IPM_ACTIVE ; 
 int ATA_SS_IPM_MASK ; 
 int ATA_SS_SPD_MASK ; 
 int ATA_SS_SPD_NO_SPEED ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  SIIS_P_SSTS ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct siis_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 union ccb* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(device_t dev)
{
	struct siis_channel *ch = FUNC2(dev);

	/* If we have a connection event, deal with it */
	if (ch->pm_level == 0) {
		u_int32_t status = FUNC0(ch->r_mem, SIIS_P_SSTS);
		union ccb *ccb;

		if (bootverbose) {
			if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
			    ((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
			    ((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE)) {
				FUNC3(dev, "CONNECT requested\n");
			} else
				FUNC3(dev, "DISCONNECT requested\n");
		}
		FUNC4(dev);
		if ((ccb = FUNC5()) == NULL)
			return;
		if (FUNC6(&ccb->ccb_h.path, NULL,
		    FUNC1(ch->sim),
		    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
			FUNC7(ccb);
			return;
		}
		FUNC8(ccb);
	}
}