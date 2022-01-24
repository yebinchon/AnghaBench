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
struct ena_adapter {int num_queues; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*,int) ; 
 int FUNC2 (struct ena_adapter*,int) ; 

__attribute__((used)) static int
FUNC3(struct ena_adapter *adapter)
{
	int i, rc = 0;

	for (i = 0; i < adapter->num_queues; i++) {
		rc = FUNC2(adapter, i);
		if (rc != 0) {
			FUNC0(adapter->pdev,
			    "Allocation for Rx Queue %u failed\n", i);
			goto err_setup_rx;
		}
	}
	return (0);

err_setup_rx:
	/* rewind the index freeing the rings as we go */
	while (i--)
		FUNC1(adapter, i);
	return (rc);
}