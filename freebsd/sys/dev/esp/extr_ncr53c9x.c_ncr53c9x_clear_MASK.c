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
struct ncr53c9x_softc {int sc_ntarg; struct ncr53c9x_ecb* sc_nexus; scalar_t__ sc_msgify; int /*<<< orphan*/  sc_state; } ;
struct ncr53c9x_ecb {TYPE_1__* ccb; } ;
typedef  int /*<<< orphan*/  cam_status ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_3__ {TYPE_2__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  NCR_CLEANING ; 
 int /*<<< orphan*/  FUNC0 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ncr53c9x_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncr53c9x_softc*,struct ncr53c9x_ecb*) ; 

__attribute__((used)) static void
FUNC3(struct ncr53c9x_softc *sc, cam_status result)
{
	struct ncr53c9x_ecb *ecb;
	int r;

	FUNC0(sc, MA_OWNED);

	/* Cancel any active commands. */
	sc->sc_state = NCR_CLEANING;
	sc->sc_msgify = 0;
	ecb = sc->sc_nexus;
	if (ecb != NULL) {
		ecb->ccb->ccb_h.status = result;
		FUNC2(sc, ecb);
	}
	/* Cancel outstanding disconnected commands. */
	for (r = 0; r < sc->sc_ntarg; r++)
		FUNC1(sc, r, result);
}