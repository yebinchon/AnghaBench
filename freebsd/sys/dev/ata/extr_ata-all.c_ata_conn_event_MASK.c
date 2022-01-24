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
struct ata_channel {int /*<<< orphan*/  state_mtx; int /*<<< orphan*/ * sim; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ata_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 union ccb* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(void *context, int dummy)
{
	device_t dev = (device_t)context;
	struct ata_channel *ch = FUNC2(dev);
	union ccb *ccb;

	FUNC3(&ch->state_mtx);
	if (ch->sim == NULL) {
		FUNC4(&ch->state_mtx);
		return;
	}
	FUNC0(dev);
	if ((ccb = FUNC5()) == NULL)
		return;
	if (FUNC6(&ccb->ccb_h.path, NULL,
	    FUNC1(ch->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC7(ccb);
		return;
	}
	FUNC8(ccb);
	FUNC4(&ch->state_mtx);
}