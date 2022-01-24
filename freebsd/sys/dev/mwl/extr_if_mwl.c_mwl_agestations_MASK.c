#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mwl_softc {int sc_ageinterval; int /*<<< orphan*/  sc_timer; int /*<<< orphan*/  sc_mh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct mwl_softc *sc = arg;

	FUNC1(sc->sc_mh);
	if (sc->sc_ageinterval != 0)		/* NB: catch dynamic changes */
		FUNC0(&sc->sc_timer, sc->sc_ageinterval*hz);
}