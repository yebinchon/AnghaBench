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
struct scc_softc {int /*<<< orphan*/ * sc_class; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SBUS_RCLK ; 
 int /*<<< orphan*/  SBUS_REGSHFT ; 
 struct scc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scc_z8530_class ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct scc_softc *sc;
	const char *nm;

	sc = FUNC0(dev);
	nm = FUNC2(dev);
	if (!FUNC4(nm, "zs")) {
		FUNC1(dev, "Zilog Z8530 dual channel SCC");
		sc->sc_class = &scc_z8530_class;
		return (FUNC3(dev, SBUS_REGSHFT, SBUS_RCLK, 0));
	}
	return (ENXIO);
}