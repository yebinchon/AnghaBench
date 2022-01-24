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
struct acpi_uhub_softc {int /*<<< orphan*/ * ah; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct acpi_uhub_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	int ret;
	struct acpi_uhub_softc *sc = FUNC3(dev);

	sc->ah = FUNC0(dev);

	if (sc->ah == NULL) {
		return (ENXIO);
	}
	if ((ret = FUNC4(dev)) != 0) {
		return (ret);
	}

	if ((ret = FUNC1(dev)) != 0) {
		FUNC2(dev);
	}

	return (ret);
}