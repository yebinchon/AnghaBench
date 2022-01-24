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
struct ahci_channel {scalar_t__ pm_level; int /*<<< orphan*/  sim; int /*<<< orphan*/  dev; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_P_CMD ; 
 int AHCI_P_CMD_CPD ; 
 int AHCI_P_CMD_CPS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static void
FUNC8(struct ahci_channel *ch)
{
	u_int32_t status;
	union ccb *ccb;
	device_t dev;

	if (ch->pm_level == 0)
		return;

	status = FUNC0(ch->r_mem, AHCI_P_CMD);
	if ((status & AHCI_P_CMD_CPD) == 0)
		return;

	if (bootverbose) {
		dev = ch->dev;
		if (status & AHCI_P_CMD_CPS) {
			FUNC3(dev, "COLD CONNECT requested\n");
		} else
			FUNC3(dev, "COLD DISCONNECT requested\n");
	}
	FUNC1(ch);
	if ((ccb = FUNC4()) == NULL)
		return;
	if (FUNC5(&ccb->ccb_h.path, NULL, FUNC2(ch->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC6(ccb);
		return;
	}
	FUNC7(ccb);
}