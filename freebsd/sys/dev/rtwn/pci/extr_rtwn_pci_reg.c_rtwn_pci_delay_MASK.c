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
struct rtwn_softc {int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct rtwn_softc *sc, int usec)
{
	if (usec < 1000)
		FUNC0(usec);
	else {
		(void) FUNC2(sc, &sc->sc_mtx, 0, "rtwn_pci",
		    FUNC1(usec / 1000));
	}
}