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
struct dtsec_softc {int /*<<< orphan*/  sc_tick_callout; int /*<<< orphan*/  sc_mii; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct dtsec_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct dtsec_softc *sc;

	sc = arg;

	/* TODO */
	FUNC0(sc);

	FUNC3(sc->sc_mii);
	FUNC2(&sc->sc_tick_callout, hz, dtsec_if_tick, sc);

	FUNC1(sc);
}