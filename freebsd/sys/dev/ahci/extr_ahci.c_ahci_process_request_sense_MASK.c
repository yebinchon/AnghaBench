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
struct TYPE_4__ {int recovery_slot; int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ahci_channel {int /*<<< orphan*/  sim; int /*<<< orphan*/  numhslots; TYPE_3__** hold; scalar_t__ recoverycmd; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; } ;

/* Variables and functions */
 int CAM_AUTOSENSE_FAIL ; 
 int CAM_AUTOSNS_VALID ; 
 int CAM_REQ_CMP ; 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_channel*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ahci_channel *ch, union ccb *ccb)
{
	int i;

	ch->recoverycmd = 0;

	i = ccb->ccb_h.recovery_slot;
	if ((ccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP) {
		ch->hold[i]->ccb_h.status |= CAM_AUTOSNS_VALID;
	} else {
		ch->hold[i]->ccb_h.status &= ~CAM_STATUS_MASK;
		ch->hold[i]->ccb_h.status |= CAM_AUTOSENSE_FAIL;
	}
	FUNC0(ch, ch->hold[i]);
	ch->hold[i] = NULL;
	ch->numhslots--;
	FUNC1(ccb);
	FUNC2(ch->sim, TRUE);
}