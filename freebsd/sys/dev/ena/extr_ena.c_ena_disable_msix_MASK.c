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
struct ena_adapter {int /*<<< orphan*/ * msix_entries; scalar_t__ msix_vecs; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ena_adapter *adapter)
{

	if (FUNC1(ENA_FLAG_MSIX_ENABLED, adapter)) {
		FUNC0(ENA_FLAG_MSIX_ENABLED, adapter);
		FUNC3(adapter->pdev);
	}

	adapter->msix_vecs = 0;
	if (adapter->msix_entries != NULL)
		FUNC2(adapter->msix_entries, M_DEVBUF);
	adapter->msix_entries = NULL;
}