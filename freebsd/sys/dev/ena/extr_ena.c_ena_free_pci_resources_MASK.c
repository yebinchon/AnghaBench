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
struct ena_adapter {int /*<<< orphan*/ * registers; int /*<<< orphan*/ * memory; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_MEM_BAR ; 
 int /*<<< orphan*/  ENA_REG_BAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ena_adapter *adapter)
{
	device_t pdev = adapter->pdev;

	if (adapter->memory != NULL) {
		FUNC1(pdev, SYS_RES_MEMORY,
		    FUNC0(ENA_MEM_BAR), adapter->memory);
	}

	if (adapter->registers != NULL) {
		FUNC1(pdev, SYS_RES_MEMORY,
		    FUNC0(ENA_REG_BAR), adapter->registers);
	}
}