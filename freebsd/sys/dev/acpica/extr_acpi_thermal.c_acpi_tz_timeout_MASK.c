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
struct acpi_tz_softc {int dummy; } ;

/* Variables and functions */
 int TZ_FLAG_GETPROFILE ; 
 int TZ_FLAG_GETSETTINGS ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_tz_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_tz_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_tz_softc*) ; 

__attribute__((used)) static void
FUNC3(struct acpi_tz_softc *sc, int flags)
{

    /* Check the current temperature and take action based on it */
    FUNC1(sc);

    /* If requested, get the power profile settings. */
    if (flags & TZ_FLAG_GETPROFILE)
	FUNC2(sc);

    /*
     * If requested, check for new devices/setpoints.  After finding them,
     * check if we need to switch fans based on the new values.
     */
    if (flags & TZ_FLAG_GETSETTINGS) {
	FUNC0(sc);
	FUNC1(sc);
    }

    /* XXX passive cooling actions? */
}