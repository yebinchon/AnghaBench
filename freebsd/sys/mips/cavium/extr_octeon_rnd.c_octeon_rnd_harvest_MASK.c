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
struct octeon_rnd_softc {int /*<<< orphan*/  sc_callout; int /*<<< orphan*/ * sc_entropy; } ;

/* Variables and functions */
 unsigned int OCTEON_RND_WORDS ; 
 int /*<<< orphan*/  RANDOM_PURE_OCTEON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct octeon_rnd_softc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct octeon_rnd_softc *sc;
	unsigned i;

	sc = arg;

	for (i = 0; i < OCTEON_RND_WORDS; i++)
		sc->sc_entropy[i] = FUNC1();
	/* MarkM: FIX!! Check that this does not swamp the harvester! */
	FUNC2(sc->sc_entropy, sizeof sc->sc_entropy, RANDOM_PURE_OCTEON);

	FUNC0(&sc->sc_callout, hz * 5, octeon_rnd_harvest, sc);
}