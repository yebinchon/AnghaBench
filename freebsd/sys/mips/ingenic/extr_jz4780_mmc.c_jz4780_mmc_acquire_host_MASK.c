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
struct jz4780_mmc_softc {scalar_t__ sc_bus_busy; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_mmc_softc*) ; 
 int /*<<< orphan*/  PCATCH ; 
 struct jz4780_mmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct jz4780_mmc_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child)
{
	struct jz4780_mmc_softc *sc;
	int error;

	sc = FUNC2(bus);
	FUNC0(sc);
	while (sc->sc_bus_busy) {
		error = FUNC3(sc, &sc->sc_mtx, PCATCH, "mmchw", 0);
		if (error != 0) {
			FUNC1(sc);
			return (error);
		}
	}
	sc->sc_bus_busy++;
	FUNC1(sc);

	return (0);
}