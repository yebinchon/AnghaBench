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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct apm_clone_data {int /*<<< orphan*/  sel_read; TYPE_1__* acpi_sc; } ;
struct TYPE_2__ {scalar_t__ acpi_next_sstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  acpi ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int events, struct thread *td)
{
	struct	apm_clone_data *clone;
	int revents;

	revents = 0;
	FUNC2((void **)&clone);
	FUNC0(acpi);
	if (clone->acpi_sc->acpi_next_sstate)
		revents |= events & (POLLIN | POLLRDNORM);
	else
		FUNC3(td, &clone->sel_read);
	FUNC1(acpi);
	return (revents);
}