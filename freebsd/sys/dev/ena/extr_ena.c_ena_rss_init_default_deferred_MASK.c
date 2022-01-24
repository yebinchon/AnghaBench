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
struct ena_adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_RSS_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct ena_adapter* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct ena_adapter *adapter;
	devclass_t dc;
	int max;
	int rc;

	dc = FUNC2("ena");
	if (FUNC8(dc == NULL)) {
		FUNC7(ENA_ALERT, "No devclass ena\n");
		return;
	}

	max = FUNC3(dc);
	while (max-- >= 0) {
		adapter = FUNC4(dc, max);
		if (adapter != NULL) {
			rc = FUNC6(adapter);
			FUNC1(ENA_FLAG_RSS_ACTIVE, adapter);
			if (FUNC8(rc != 0)) {
				FUNC5(adapter->pdev,
				    "WARNING: RSS was not properly initialized,"
				    " it will affect bandwidth\n");
				FUNC0(ENA_FLAG_RSS_ACTIVE, adapter);
			}
		}
	}
}