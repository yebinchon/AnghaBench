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
struct knote {struct apm_clone_data* kn_hook; } ;
struct apm_clone_data {TYPE_1__* acpi_sc; } ;
struct TYPE_2__ {scalar_t__ acpi_next_sstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, long hint)
{
	struct	apm_clone_data *clone;
	int	sleeping;

	FUNC0(acpi);
	clone = kn->kn_hook;
	sleeping = clone->acpi_sc->acpi_next_sstate ? 1 : 0;
	FUNC1(acpi);
	return (sleeping);
}