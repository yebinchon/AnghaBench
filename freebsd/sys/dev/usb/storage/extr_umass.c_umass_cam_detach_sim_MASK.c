#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct umass_softc {TYPE_1__* sc_sim; int /*<<< orphan*/  sc_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct umass_softc *sc)
{
	if (sc->sc_sim != NULL) {
		if (FUNC3(FUNC1(sc->sc_sim))) {
			/* accessing the softc is not possible after this */
			sc->sc_sim->softc = NULL;
			FUNC0(sc->sc_sim, /* free_devq */ TRUE);
		} else {
			FUNC2("%s: CAM layer is busy\n",
			    sc->sc_name);
		}
		sc->sc_sim = NULL;
	}
}