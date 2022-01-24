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
struct smc_softc {int /*<<< orphan*/  smc_mii_tick_ch; int /*<<< orphan*/ * smc_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *context)
{
	struct smc_softc	*sc;

	sc = (struct smc_softc *)context;

	if (sc->smc_miibus == NULL)
		return;

	FUNC0(sc);

	FUNC3(FUNC2(sc->smc_miibus));
	FUNC1(&sc->smc_mii_tick_ch, hz, smc_mii_tick, sc);
}