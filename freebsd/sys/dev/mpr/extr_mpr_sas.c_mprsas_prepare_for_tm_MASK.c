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
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct mprsas_target {int /*<<< orphan*/  flags; int /*<<< orphan*/  tid; } ;
struct mpr_softc {TYPE_1__* sassc; } ;
struct mpr_command {struct mprsas_target* cm_targ; union ccb* cm_ccb; } ;
typedef  int /*<<< orphan*/  path_id_t ;
typedef  int /*<<< orphan*/  lun_id_t ;
struct TYPE_3__ {int /*<<< orphan*/  sim; } ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  MPRSAS_TARGET_INRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 union ccb* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  xpt_periph ; 

void
FUNC4(struct mpr_softc *sc, struct mpr_command *tm,
    struct mprsas_target *target, lun_id_t lun_id)
{
	union ccb *ccb;
	path_id_t path_id;

	ccb = FUNC1();
	if (ccb) {
		path_id = FUNC0(sc->sassc->sim);
		if (FUNC2(&ccb->ccb_h.path, xpt_periph, path_id,
		    target->tid, lun_id) != CAM_REQ_CMP) {
			FUNC3(ccb);
		} else {
			tm->cm_ccb = ccb;
			tm->cm_targ = target;
			target->flags |= MPRSAS_TARGET_INRESET;
		}
	}
}