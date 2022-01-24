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
struct mly_softc {int /*<<< orphan*/ * mly_cam_sim; } ;

/* Variables and functions */
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mly_softc*,char*) ; 
 union ccb* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(struct mly_softc *sc, int bus, int target)
{
    union ccb	*ccb;

    FUNC2(1);

    if ((ccb = FUNC4()) == NULL) {
	FUNC3(sc, "rescan failed (can't allocate CCB)\n");
	return;
    }
    if (FUNC5(&ccb->ccb_h.path, NULL,
	    FUNC0(sc->mly_cam_sim[bus]), target, 0) != CAM_REQ_CMP) {
	FUNC3(sc, "rescan failed (can't create path)\n");
	FUNC6(ccb);
	return;
    }
    FUNC1(1, "rescan target %d:%d", bus, target);
    FUNC7(ccb);
}