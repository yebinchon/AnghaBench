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
struct TYPE_3__ {int /*<<< orphan*/  os; int /*<<< orphan*/  sli; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  int ocs_hw_property_e ;

/* Variables and functions */
#define  OCS_HW_BIOS_VERSION_STRING 135 
#define  OCS_HW_FW_REV 134 
#define  OCS_HW_FW_REV2 133 
#define  OCS_HW_IPL 132 
#define  OCS_HW_PORTNUM 131 
#define  OCS_HW_VPD 130 
#define  OCS_HW_WWN_NODE 129 
#define  OCS_HW_WWN_PORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

void *
FUNC9(ocs_hw_t *hw, ocs_hw_property_e prop)
{
	void	*rc = NULL;

	switch (prop) {
	case OCS_HW_WWN_NODE:
		rc = FUNC7(&hw->sli);
		break;
	case OCS_HW_WWN_PORT:
		rc = FUNC8(&hw->sli);
		break;
	case OCS_HW_VPD:
		/* make sure VPD length is non-zero */
		if (FUNC6(&hw->sli)) {
			rc = FUNC5(&hw->sli);
		}
		break;
	case OCS_HW_FW_REV:
		rc = FUNC2(&hw->sli, 0);
		break;
	case OCS_HW_FW_REV2:
		rc = FUNC2(&hw->sli, 1);
		break;
	case OCS_HW_IPL:
		rc = FUNC3(&hw->sli);
		break;
	case OCS_HW_PORTNUM:
		rc = FUNC4(&hw->sli);
		break;
	case OCS_HW_BIOS_VERSION_STRING:
		rc = FUNC1(&hw->sli);
		break;
	default:
		FUNC0(hw->os, "unsupported property %#x\n", prop);
	}

	return rc;
}