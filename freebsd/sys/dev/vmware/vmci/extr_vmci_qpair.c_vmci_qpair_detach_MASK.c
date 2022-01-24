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
struct vmci_qpair {int flags; int /*<<< orphan*/  event; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_QPFLAG_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_qpair*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct vmci_qpair **qpair)
{
	struct vmci_qpair *old_qpair;
	int result;

	if (!qpair || !(*qpair))
		return (VMCI_ERROR_INVALID_ARGS);

	old_qpair = *qpair;
	result = FUNC2(old_qpair->handle);

	/*
	 * The guest can fail to detach for a number of reasons, and if it does
	 * so, it will cleanup the entry (if there is one). We need to release
	 * the qpair struct here; there isn't much the caller can do, and we
	 * don't want to leak.
	 */

	if (old_qpair->flags & VMCI_QPFLAG_LOCAL)
		FUNC0(&old_qpair->event);

	FUNC1(old_qpair, sizeof(*old_qpair));
	*qpair = NULL;

	return (result);
}