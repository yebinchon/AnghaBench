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
struct smc_softc {int /*<<< orphan*/  smc_intr; int /*<<< orphan*/  smc_tq; int /*<<< orphan*/  smc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct smc_softc	*sc;
	
	sc = (struct smc_softc *)arg;
	FUNC0(sc->smc_dev, "watchdog timeout\n");
	FUNC1(sc->smc_tq, &sc->smc_intr);
}