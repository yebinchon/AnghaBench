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
struct ena_adapter {int /*<<< orphan*/  hw_stats; TYPE_1__* ifp; } ;
typedef  int /*<<< orphan*/  counter_u64_t ;
struct TYPE_2__ {int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_RSS_ACTIVE ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ena_adapter*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct ena_adapter *adapter)
{
	int rc;

	if (FUNC5(FUNC0(ENA_FLAG_RSS_ACTIVE, adapter))) {
		rc = FUNC4(adapter);
		if (rc != 0)
			return (rc);
	}

	rc = FUNC1(adapter->ifp, adapter->ifp->if_mtu);
	if (FUNC6(rc != 0))
		return (rc);

	FUNC2(adapter);
	FUNC3((counter_u64_t *)&adapter->hw_stats,
	    sizeof(adapter->hw_stats));

	return (0);
}