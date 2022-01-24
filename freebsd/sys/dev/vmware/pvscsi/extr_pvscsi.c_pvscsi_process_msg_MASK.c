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
struct pvscsi_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  sim; } ;
struct pvscsi_ring_msg_dev_status_changed {int const type; int /*<<< orphan*/ * lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct pvscsi_ring_msg_desc {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_REQ_CMP ; 
#define  PVSCSI_MSG_DEV_ADDED 129 
#define  PVSCSI_MSG_DEV_REMOVED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 union ccb* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 

__attribute__((used)) static void
FUNC6(struct pvscsi_softc *sc, struct pvscsi_ring_msg_desc *e)
{
	struct pvscsi_ring_msg_dev_status_changed *desc;

	union ccb *ccb;
	switch (e->type) {
	case PVSCSI_MSG_DEV_ADDED:
	case PVSCSI_MSG_DEV_REMOVED: {
		desc = (struct pvscsi_ring_msg_dev_status_changed *)e;

		FUNC1(sc->dev, "MSG: device %s at scsi%u:%u:%u\n",
		    desc->type == PVSCSI_MSG_DEV_ADDED ? "addition" : "removal",
		    desc->bus, desc->target, desc->lun[1]);

		ccb = FUNC2();
		if (ccb == NULL) {
			FUNC1(sc->dev,
			    "Error allocating CCB for dev change.\n");
			break;
		}

		if (FUNC3(&ccb->ccb_h.path, NULL,
		    FUNC0(sc->sim), desc->target, desc->lun[1])
		    != CAM_REQ_CMP) {
			FUNC1(sc->dev,
			    "Error creating path for dev change.\n");
			FUNC4(ccb);
			break;
		}

		FUNC5(ccb);
	} break;
	default:
		FUNC1(sc->dev, "Unknown msg type 0x%x\n", e->type);
	};
}