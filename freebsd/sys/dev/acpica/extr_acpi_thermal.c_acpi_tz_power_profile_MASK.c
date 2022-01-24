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
struct acpi_tz_softc {int tz_flags; int /*<<< orphan*/  tz_handle; int /*<<< orphan*/  tz_dev; } ;
typedef  scalar_t__ ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int POWER_PROFILE_ECONOMY ; 
 int POWER_PROFILE_PERFORMANCE ; 
 int /*<<< orphan*/  TZ_FLAG_GETSETTINGS ; 
 int TZ_FLAG_NO_SCP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_tz_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
    ACPI_STATUS			status;
    struct acpi_tz_softc	*sc = (struct acpi_tz_softc *)arg;
    int				state;

    state = FUNC7();
    if (state != POWER_PROFILE_PERFORMANCE && state != POWER_PROFILE_ECONOMY)
	return;

    /* check that we haven't decided there's no _SCP method */
    if ((sc->tz_flags & TZ_FLAG_NO_SCP) == 0) {

	/* Call _SCP to set the new profile */
	status = FUNC3(sc->tz_handle, "_SCP",
	    (state == POWER_PROFILE_PERFORMANCE) ? 0 : 1);
	if (FUNC0(status)) {
	    if (status != AE_NOT_FOUND)
		FUNC1(sc->tz_dev,
			    FUNC4(sc->tz_dev),
			    "can't evaluate %s._SCP - %s\n",
			    FUNC5(sc->tz_handle),
			    FUNC2(status));
	    sc->tz_flags |= TZ_FLAG_NO_SCP;
	} else {
	    /* We have to re-evaluate the entire zone now */
	    FUNC6(sc, TZ_FLAG_GETSETTINGS);
	}
    }
}