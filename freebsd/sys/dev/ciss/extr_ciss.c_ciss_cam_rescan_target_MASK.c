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
struct ciss_softc {int /*<<< orphan*/ * ciss_cam_sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 union ccb* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

__attribute__((used)) static void
FUNC7(struct ciss_softc *sc, int bus, int target)
{
    union ccb		*ccb;

    FUNC2(1);

    if ((ccb = FUNC3()) == NULL) {
	FUNC1(sc, "rescan failed (can't allocate CCB)\n");
	return;
    }

    if (FUNC4(&ccb->ccb_h.path, NULL,
	    FUNC0(sc->ciss_cam_sim[bus]),
	    target, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
	FUNC1(sc, "rescan failed (can't create path)\n");
	FUNC5(ccb);
	return;
    }
    FUNC6(ccb);
    /* scan is now in progress */
}