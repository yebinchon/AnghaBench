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
struct acpi_tz_softc {int tz_temperature; int /*<<< orphan*/  tz_dev; int /*<<< orphan*/  tz_handle; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_VALUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_tz_softc*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_tz_tmp_name ; 

__attribute__((used)) static int
FUNC9(struct acpi_tz_softc *sc)
{
    int		temp;
    ACPI_STATUS	status;

    FUNC2 ("acpi_tz_get_temperature");

    /* Evaluate the thermal zone's _TMP method. */
    status = FUNC6(sc->tz_handle, acpi_tz_tmp_name, &temp);
    if (FUNC1(status)) {
	FUNC3(sc->tz_dev, FUNC7(sc->tz_dev),
	    "error fetching current temperature -- %s\n",
	     FUNC4(status));
	return (FALSE);
    }

    /* Check it for validity. */
    FUNC8(sc, &temp, acpi_tz_tmp_name);
    if (temp == -1)
	return (FALSE);

    FUNC0((ACPI_DB_VALUES, "got %d.%dC\n", FUNC5(temp)));
    sc->tz_temperature = temp;
    return (TRUE);
}