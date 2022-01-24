#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; scalar_t__ ref_count; int /*<<< orphan*/  handle; } ;
struct qp_guest_endpoint {TYPE_2__ qp; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  hibernate; } ;

/* Variables and functions */
 int VMCI_QPFLAG_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qp_guest_endpoint*) ; 
 TYPE_1__ qp_guest_endpoints ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	struct qp_guest_endpoint *entry;

	FUNC5(&qp_guest_endpoints.mutex);

	while ((entry =
	    (struct qp_guest_endpoint *)FUNC3(
	    &qp_guest_endpoints)) != NULL) {
		/*
		 * Don't make a hypercall for local QueuePairs.
		 */
		if (!(entry->qp.flags & VMCI_QPFLAG_LOCAL))
			FUNC7(entry->qp.handle);
		/*
		 * We cannot fail the exit, so let's reset ref_count.
		 */
		entry->qp.ref_count = 0;
		FUNC4(&qp_guest_endpoints, &entry->qp);
		FUNC1(entry);
	}

	FUNC0(&qp_guest_endpoints.hibernate, 0);
	FUNC6(&qp_guest_endpoints.mutex);
	FUNC2(&qp_guest_endpoints);
}