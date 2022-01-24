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
struct acpi_softc {int /*<<< orphan*/  acpi_dev_t; int /*<<< orphan*/  acpi_clone; int /*<<< orphan*/  apm_cdevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  apm_cdevsw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void
FUNC3(struct acpi_softc *sc)
{

	/* Create a clone for /dev/acpi also. */
	FUNC0(&sc->apm_cdevs);
	sc->acpi_clone = FUNC1(sc->acpi_dev_t, sc);

	FUNC2(&apm_cdevsw, 0, UID_ROOT, GID_OPERATOR, 0660, "apmctl");
	FUNC2(&apm_cdevsw, 0, UID_ROOT, GID_OPERATOR, 0664, "apm");
}