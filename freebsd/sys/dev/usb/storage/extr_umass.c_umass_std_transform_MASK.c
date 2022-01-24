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
struct TYPE_2__ {int status; int /*<<< orphan*/  path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int uint8_t ;
struct umass_softc {int (* sc_transform ) (struct umass_softc*,int*,int) ;} ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int CAM_REQ_CMP ; 
 int CAM_REQ_INVALID ; 
 int FUNC0 (struct umass_softc*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint8_t
FUNC3(struct umass_softc *sc, union ccb *ccb,
    uint8_t *cmd, uint8_t cmdlen)
{
	uint8_t retval;

	retval = (sc->sc_transform) (sc, cmd, cmdlen);

	if (retval == 2) {
		ccb->ccb_h.status = CAM_REQ_CMP;
		FUNC1(ccb);
		return (0);
	} else if (retval == 0) {
		FUNC2(ccb->ccb_h.path, 1);
		ccb->ccb_h.status = CAM_REQ_INVALID | CAM_DEV_QFRZN;
		FUNC1(ccb);
		return (0);
	}
	/* Command should be executed */
	return (1);
}