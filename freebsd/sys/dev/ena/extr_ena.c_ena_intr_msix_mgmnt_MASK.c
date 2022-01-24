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
struct ena_adapter {int /*<<< orphan*/  ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct ena_adapter *adapter = (struct ena_adapter *)arg;

	FUNC1(adapter->ena_dev);
	if (FUNC3(FUNC0(ENA_FLAG_DEVICE_RUNNING, adapter)))
		FUNC2(adapter->ena_dev, arg);
}