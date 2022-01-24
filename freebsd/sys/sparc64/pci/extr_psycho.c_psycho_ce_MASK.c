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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_long ;
struct psycho_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  PSR_CE_AFA ; 
 int /*<<< orphan*/  PSR_CE_AFS ; 
 scalar_t__ FUNC0 (struct psycho_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psycho_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	struct psycho_softc *sc = arg;
	uint64_t afar, afsr;

	FUNC3(sc->sc_mtx);
	afar = FUNC0(sc, PSR_CE_AFA);
	afsr = FUNC0(sc, PSR_CE_AFS);
	FUNC2(sc->sc_dev, "correctable DMA error AFAR %#lx "
	    "AFSR %#lx\n", (u_long)afar, (u_long)afsr);
	/* Clear the error bits that we caught. */
	FUNC1(sc, PSR_CE_AFS, afsr);
	FUNC4(sc->sc_mtx);
	return (FILTER_HANDLED);
}