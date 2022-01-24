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
struct twa_softc {int /*<<< orphan*/  sim_lock; int /*<<< orphan*/  sim; } ;
typedef  int /*<<< orphan*/  TW_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct twa_softc*,char*) ; 
 union ccb* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

TW_INT32
FUNC8(struct twa_softc *sc)
{
	union ccb	*ccb;

	FUNC3(3, sc, "entering");

	/* If we get here before sc->sim is initialized, return an error. */
	if (!(sc->sim))
		return(ENXIO);
	if ((ccb = FUNC4()) == NULL)
		return(ENOMEM);
	FUNC1(sc->sim_lock);
	if (FUNC5(&ccb->ccb_h.path, NULL, FUNC0(sc->sim),
	    CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC6(ccb);
		FUNC2(sc->sim_lock);
		return(EIO);
	}

	FUNC7(ccb);
	FUNC2(sc->sim_lock);
	return(0);
}