#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct apm_clone_data {scalar_t__ notify_status; TYPE_1__ sel_read; struct acpi_softc* acpi_sc; } ;
struct acpi_softc {scalar_t__ acpi_next_sstate; int /*<<< orphan*/  apm_cdevs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ APM_EV_ACKED ; 
 int /*<<< orphan*/  M_APMDEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct apm_clone_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi ; 
 int /*<<< orphan*/  FUNC3 (struct apm_clone_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apm_clone_data ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC4 (struct apm_clone_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(void *data)
{
	struct	apm_clone_data *clone;
	struct	acpi_softc *acpi_sc;

	clone = data;
	acpi_sc = clone->acpi_sc;

	/* We are about to lose a reference so check if suspend should occur */
	if (acpi_sc->acpi_next_sstate != 0 &&
	    clone->notify_status != APM_EV_ACKED)
		FUNC3(clone, 0);

	/* Remove this clone's data from the list and free it. */
	FUNC0(acpi);
	FUNC2(&acpi_sc->apm_cdevs, clone, apm_clone_data, entries);
	FUNC6(&clone->sel_read);
	FUNC5(&clone->sel_read.si_note);
	FUNC1(acpi);
	FUNC4(clone, M_APMDEV);
}