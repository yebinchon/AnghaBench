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
struct rtwn_softc {int nrxchains; int /*<<< orphan*/ * rf_prog; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ *,int) ; 

void
FUNC1(struct rtwn_softc *sc)
{
	int chain, i;

	for (chain = 0, i = 0; chain < sc->nrxchains; chain++, i++) {
		/* Write RF initialization values for this chain. */
		i += FUNC0(sc, &sc->rf_prog[i], chain);
	}
}