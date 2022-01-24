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
struct smc_softc {int smc_usemem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct smc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct	smc_softc *sc;

	if (!FUNC2(dev))
		return (ENXIO);

	if (FUNC1(dev, "smsc,lan91c111")) {
		sc = FUNC0(dev);
		sc->smc_usemem = 1;

		if (FUNC3(dev) != 0) {
			return (ENXIO);
		}

		return (0);
	}

	return (ENXIO);
}