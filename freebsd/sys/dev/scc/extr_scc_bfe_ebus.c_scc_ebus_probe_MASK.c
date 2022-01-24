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
 int /*<<< orphan*/  EBUS_RCLK ; 
 int /*<<< orphan*/  EBUS_REGSHFT ; 
 int ENXIO ; 
 struct scc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scc_sab82532_class ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct scc_softc *sc;
	const char *cmpt, *nm;

	sc = FUNC0(dev);
	nm = FUNC3(dev);
	cmpt = FUNC2(dev);
	if (cmpt == NULL)
		cmpt = "";
	if (!FUNC5(nm, "se") || !FUNC5(nm, "FJSV,se") ||
	    !FUNC5(cmpt, "sab82532")) {
		FUNC1(dev, "Siemens SAB 82532 dual channel SCC");
		sc->sc_class = &scc_sab82532_class;
		return (FUNC4(dev, EBUS_REGSHFT, EBUS_RCLK, 0));
	}
	return (ENXIO);
}