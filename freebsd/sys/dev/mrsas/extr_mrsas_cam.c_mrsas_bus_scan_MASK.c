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
struct mrsas_softc {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  sim_1; int /*<<< orphan*/  sim_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 union ccb* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  xpt_periph ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

int
FUNC7(struct mrsas_softc *sc)
{
	union ccb *ccb_0;
	union ccb *ccb_1;

	if ((ccb_0 = FUNC3()) == NULL) {
		return (ENOMEM);
	}
	if ((ccb_1 = FUNC3()) == NULL) {
		FUNC5(ccb_0);
		return (ENOMEM);
	}
	FUNC1(&sc->sim_lock);
	if (FUNC4(&ccb_0->ccb_h.path, xpt_periph, FUNC0(sc->sim_0),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC5(ccb_0);
		FUNC5(ccb_1);
		FUNC2(&sc->sim_lock);
		return (EIO);
	}
	if (FUNC4(&ccb_1->ccb_h.path, xpt_periph, FUNC0(sc->sim_1),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC5(ccb_0);
		FUNC5(ccb_1);
		FUNC2(&sc->sim_lock);
		return (EIO);
	}
	FUNC2(&sc->sim_lock);
	FUNC6(ccb_0);
	FUNC6(ccb_1);

	return (0);
}