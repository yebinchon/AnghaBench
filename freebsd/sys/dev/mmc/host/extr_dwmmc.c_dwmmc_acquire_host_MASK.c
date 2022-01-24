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
struct dwmmc_softc {scalar_t__ bus_busy; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwmmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwmmc_softc*) ; 
 int /*<<< orphan*/  PZERO ; 
 struct dwmmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct dwmmc_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t brdev, device_t reqdev)
{
	struct dwmmc_softc *sc;

	sc = FUNC2(brdev);

	FUNC0(sc);
	while (sc->bus_busy)
		FUNC3(sc, &sc->sc_mtx, PZERO, "dwmmcah", hz / 5);
	sc->bus_busy++;
	FUNC1(sc);
	return (0);
}