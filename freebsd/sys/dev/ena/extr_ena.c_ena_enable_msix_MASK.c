#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {int dummy; } ;
struct ena_adapter {int num_queues; int msix_vecs; TYPE_1__* msix_entries; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int entry; int vector; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENA_ADMIN_MSIX_VEC ; 
 int /*<<< orphan*/  ENA_DBG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int FUNC2 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct ena_adapter *adapter)
{
	device_t dev = adapter->pdev;
	int msix_vecs, msix_req;
	int i, rc = 0;

	if (FUNC0(ENA_FLAG_MSIX_ENABLED, adapter)) {
		FUNC3(dev, "Error, MSI-X is already enabled\n");
		return (EINVAL);
	}

	/* Reserved the max msix vectors we might need */
	msix_vecs = FUNC2(adapter->num_queues);

	adapter->msix_entries = FUNC6(msix_vecs * sizeof(struct msix_entry),
	    M_DEVBUF, M_WAITOK | M_ZERO);

	FUNC4(ENA_DBG, "trying to enable MSI-X, vectors: %d\n", msix_vecs);

	for (i = 0; i < msix_vecs; i++) {
		adapter->msix_entries[i].entry = i;
		/* Vectors must start from 1 */
		adapter->msix_entries[i].vector = i + 1;
	}

	msix_req = msix_vecs;
	rc = FUNC7(dev, &msix_vecs);
	if (FUNC9(rc != 0)) {
		FUNC3(dev,
		    "Failed to enable MSIX, vectors %d rc %d\n", msix_vecs, rc);

		rc = ENOSPC;
		goto err_msix_free;
	}

	if (msix_vecs != msix_req) {
		if (msix_vecs == ENA_ADMIN_MSIX_VEC) {
			FUNC3(dev,
			    "Not enough number of MSI-x allocated: %d\n",
			    msix_vecs);
			FUNC8(dev);
			rc = ENOSPC;
			goto err_msix_free;
		}
		FUNC3(dev, "Enable only %d MSI-x (out of %d), reduce "
		    "the number of queues\n", msix_vecs, msix_req);
		adapter->num_queues = msix_vecs - ENA_ADMIN_MSIX_VEC;
	}

	adapter->msix_vecs = msix_vecs;
	FUNC1(ENA_FLAG_MSIX_ENABLED, adapter);

	return (0);

err_msix_free:
	FUNC5(adapter->msix_entries, M_DEVBUF);
	adapter->msix_entries = NULL;

	return (rc);
}