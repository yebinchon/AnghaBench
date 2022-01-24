#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vmci_handle {int dummy; } ;
struct TYPE_6__ {int ref_count; int flags; } ;
struct qp_guest_endpoint {TYPE_2__ qp; scalar_t__ hibernate_failure; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VMCI_ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_handle) ; 
 int VMCI_QPFLAG_LOCAL ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct qp_guest_endpoint*) ; 
 TYPE_1__ qp_guest_endpoints ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC5 (int,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vmci_handle) ; 

__attribute__((used)) static int
FUNC9(struct vmci_handle handle)
{
	struct qp_guest_endpoint *entry;
	int result;
	uint32_t ref_count;

	FUNC0(!FUNC1(handle));

	FUNC6(&qp_guest_endpoints.mutex);

	entry = (struct qp_guest_endpoint *)FUNC3(
	    &qp_guest_endpoints, handle);
	if (!entry) {
		FUNC7(&qp_guest_endpoints.mutex);
		return (VMCI_ERROR_NOT_FOUND);
	}

	FUNC0(entry->qp.ref_count >= 1);

	if (entry->qp.flags & VMCI_QPFLAG_LOCAL) {
		result = VMCI_SUCCESS;

		if (entry->qp.ref_count > 1) {
			result = FUNC5(false, handle);

			/*
			 * We can fail to notify a local queuepair because we
			 * can't allocate. We still want to release the entry
			 * if that happens, so don't bail out yet.
			 */
		}
	} else {
		result = FUNC8(handle);
		if (entry->hibernate_failure) {
			if (result == VMCI_ERROR_NOT_FOUND) {

				/*
				 * If a queue pair detach failed when entering
				 * hibernation, the guest driver and the device
				 * may disagree on its existence when coming
				 * out of hibernation. The guest driver will
				 * regard it as a non-local queue pair, but
				 * the device state is gone, since the device
				 * has been powered off. In this case, we
				 * treat the queue pair as a local queue pair
				 * with no peer.
				 */

				FUNC0(entry->qp.ref_count == 1);
				result = VMCI_SUCCESS;
			}
		}
		if (result < VMCI_SUCCESS) {

			/*
			 * We failed to notify a non-local queuepair. That other
			 * queuepair might still be accessing the shared
			 * memory, so don't release the entry yet. It will get
			 * cleaned up by vmci_queue_pair_Exit() if necessary
			 * (assuming we are going away, otherwise why did this
			 * fail?).
			 */

			FUNC7(&qp_guest_endpoints.mutex);
			return (result);
		}
	}

	/*
	 * If we get here then we either failed to notify a local queuepair, or
	 * we succeeded in all cases.  Release the entry if required.
	 */

	entry->qp.ref_count--;
	if (entry->qp.ref_count == 0)
		FUNC4(&qp_guest_endpoints, &entry->qp);

	/* If we didn't remove the entry, this could change once we unlock. */
	ref_count = entry ? entry->qp.ref_count :
	    0xffffffff; /*
			 * Value does not matter, silence the
			 * compiler.
			 */

	FUNC7(&qp_guest_endpoints.mutex);

	if (ref_count == 0)
		FUNC2(entry);
	return (result);
}