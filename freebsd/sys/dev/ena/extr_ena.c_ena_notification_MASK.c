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
struct ena_admin_ena_hw_hints {int dummy; } ;
struct TYPE_2__ {scalar_t__ group; int syndrom; } ;
struct ena_admin_aenq_entry {TYPE_1__ aenq_common_desc; int /*<<< orphan*/  inline_data_w4; } ;
struct ena_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ ENA_ADMIN_NOTIFICATION ; 
#define  ENA_ADMIN_UPDATE_HINTS 128 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,struct ena_admin_ena_hw_hints*) ; 

__attribute__((used)) static void FUNC3(void *adapter_data,
    struct ena_admin_aenq_entry *aenq_e)
{
	struct ena_adapter *adapter = (struct ena_adapter *)adapter_data;
	struct ena_admin_ena_hw_hints *hints;

	FUNC0(aenq_e->aenq_common_desc.group != ENA_ADMIN_NOTIFICATION,
	    "Invalid group(%x) expected %x\n",	aenq_e->aenq_common_desc.group,
	    ENA_ADMIN_NOTIFICATION);

	switch (aenq_e->aenq_common_desc.syndrom) {
	case ENA_ADMIN_UPDATE_HINTS:
		hints =
		    (struct ena_admin_ena_hw_hints *)(&aenq_e->inline_data_w4);
		FUNC2(adapter, hints);
		break;
	default:
		FUNC1(adapter->pdev,
		    "Invalid aenq notification link state %d\n",
		    aenq_e->aenq_common_desc.syndrom);
	}
}