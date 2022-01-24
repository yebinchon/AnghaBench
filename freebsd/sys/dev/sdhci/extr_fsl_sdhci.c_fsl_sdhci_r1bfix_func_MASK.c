#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mtx; } ;
struct fsl_sdhci_softc {TYPE_1__ slot; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fsl_sdhci_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(void * arg)
{
	struct fsl_sdhci_softc *sc = arg;
	boolean_t r1bwait_done;

	FUNC1(&sc->slot.mtx);
	r1bwait_done = FUNC0(sc);
	FUNC2(&sc->slot.mtx);
	if (r1bwait_done)
		FUNC3(&sc->slot);
}