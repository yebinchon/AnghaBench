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
struct mwl_softc {int /*<<< orphan*/  sc_staid; } ;

/* Variables and functions */
 int MWL_MAXSTAID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct mwl_softc *sc, int aid)
{
	int staid;

	if (!(0 < aid && aid < MWL_MAXSTAID) || FUNC1(sc->sc_staid, aid)) {
		/* NB: don't use 0 */
		for (staid = 1; staid < MWL_MAXSTAID; staid++)
			if (FUNC0(sc->sc_staid, staid))
				break;
	} else
		staid = aid;
	FUNC2(sc->sc_staid, staid);
	return staid;
}