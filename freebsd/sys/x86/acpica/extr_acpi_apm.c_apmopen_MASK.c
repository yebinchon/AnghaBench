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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_clone_data {int /*<<< orphan*/  flags; } ;
struct acpi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EVF_WRITE ; 
 int FWRITE ; 
 struct apm_clone_data* FUNC0 (struct cdev*,struct acpi_softc*) ; 
 int /*<<< orphan*/  apmdtor ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct acpi_softc* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct apm_clone_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flag, int fmt, struct thread *td)
{
	struct	acpi_softc *acpi_sc;
	struct 	apm_clone_data *clone;

	acpi_sc = FUNC2(FUNC1("acpi"), 0);
	clone = FUNC0(dev, acpi_sc);
	FUNC3(clone, apmdtor);

	/* If the device is opened for write, record that. */
	if ((flag & FWRITE) != 0)
		clone->flags |= ACPI_EVF_WRITE;

	return (0);
}