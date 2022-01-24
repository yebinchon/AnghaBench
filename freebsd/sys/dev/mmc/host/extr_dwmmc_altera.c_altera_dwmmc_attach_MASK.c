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
struct dwmmc_softc {int bus_hz; int use_pio; int /*<<< orphan*/  hwtype; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HWTYPE_ALTERA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dwmmc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct dwmmc_softc *sc;
	phandle_t root;

	sc = FUNC1(dev);
	sc->hwtype = HWTYPE_ALTERA;

	root = FUNC0("/");

	if (FUNC3(root, "altr,socfpga-stratix10")) {
		sc->bus_hz = 24000000;
		sc->use_pio = 1;
	}

	return (FUNC2(dev));
}