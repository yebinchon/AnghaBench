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
struct acpi_tz_softc {scalar_t__ tz_cooling_updated; int /*<<< orphan*/  tz_cooling_saved_freq; int /*<<< orphan*/  tz_temperature; int /*<<< orphan*/  tz_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPUFREQ_PRIO_KERN ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct acpi_tz_softc *sc)
{
    device_t dev;
    int error;

    if (!sc->tz_cooling_updated)
	return (0);
    if ((dev = FUNC5(FUNC4("cpufreq"), 0)) == NULL)
	return (ENXIO);
    FUNC0(sc->tz_dev, FUNC3(sc->tz_dev),
	"temperature %d.%dC: resuming previous clock speed (%d MHz)\n",
	FUNC2(sc->tz_temperature), sc->tz_cooling_saved_freq);
    error = FUNC1(dev, NULL, CPUFREQ_PRIO_KERN);
    if (error == 0)
	sc->tz_cooling_updated = FALSE;
    return (error);
}