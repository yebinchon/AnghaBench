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
struct twsi_softc {int have_intr; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * res; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct twsi_softc*,int /*<<< orphan*/ *) ; 
 struct twsi_softc* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  twsi_intr ; 

__attribute__((used)) static void
FUNC3(void *pdev)
{
	struct twsi_softc *sc;

	sc = FUNC1(pdev);

	if ((FUNC0(pdev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
	      NULL, twsi_intr, sc, &sc->intrhand)))
		FUNC2(pdev, "unable to register interrupt handler\n");

	sc->have_intr = true;
}