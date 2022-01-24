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
struct ena_admin_aenq_entry {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
	struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;

	FUNC0(adapter->pdev,
	    "Unknown event was received or event with unimplemented handler\n");
}