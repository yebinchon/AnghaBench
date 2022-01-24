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
struct ena_adapter {int max_mtu; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ena_dev; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENA_DBG ; 
 int ENA_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct ena_adapter* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(if_t ifp, int new_mtu)
{
	struct ena_adapter *adapter = FUNC3(ifp);
	int rc;

	if ((new_mtu > adapter->max_mtu) || (new_mtu < ENA_MIN_MTU)) {
		FUNC0(adapter->pdev, "Invalid MTU setting. "
		    "new_mtu: %d max mtu: %d min mtu: %d\n",
		    new_mtu, adapter->max_mtu, ENA_MIN_MTU);
		return (EINVAL);
	}

	rc = FUNC1(adapter->ena_dev, new_mtu);
	if (FUNC5(rc == 0)) {
		FUNC2(ENA_DBG, "set MTU to %d\n", new_mtu);
		FUNC4(ifp, new_mtu);
	} else {
		FUNC0(adapter->pdev, "Failed to set MTU to %d\n",
		    new_mtu);
	}

	return (rc);
}