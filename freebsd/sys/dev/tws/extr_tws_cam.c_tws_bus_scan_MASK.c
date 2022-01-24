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
struct tws_softc {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 union ccb* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

int
FUNC8(struct tws_softc *sc)
{
    union ccb       *ccb;

    FUNC0(sc, "entry", sc, 0);
    if (!(sc->sim))
        return(ENXIO);
    ccb = FUNC4();
    FUNC2(&sc->sim_lock);
    if (FUNC5(&ccb->ccb_h.path, NULL, FUNC1(sc->sim),
                  CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
	FUNC3(&sc->sim_lock);
        FUNC6(ccb);
        return(EIO);
    }
    FUNC7(ccb);
    FUNC3(&sc->sim_lock);
    return(0);
}