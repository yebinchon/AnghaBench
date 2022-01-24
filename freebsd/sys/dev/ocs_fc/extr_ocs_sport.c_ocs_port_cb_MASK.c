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
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_2__ {int /*<<< orphan*/  sm; } ;
typedef  TYPE_1__ ocs_sli_port_t ;
typedef  int ocs_hw_port_event_e ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_SPORT_ALLOC_FAIL ; 
 int /*<<< orphan*/  OCS_EVT_SPORT_ALLOC_OK ; 
 int /*<<< orphan*/  OCS_EVT_SPORT_ATTACH_FAIL ; 
 int /*<<< orphan*/  OCS_EVT_SPORT_ATTACH_OK ; 
 int /*<<< orphan*/  OCS_EVT_SPORT_FREE_FAIL ; 
 int /*<<< orphan*/  OCS_EVT_SPORT_FREE_OK ; 
#define  OCS_HW_PORT_ALLOC_FAIL 133 
#define  OCS_HW_PORT_ALLOC_OK 132 
#define  OCS_HW_PORT_ATTACH_FAIL 131 
#define  OCS_HW_PORT_ATTACH_OK 130 
#define  OCS_HW_PORT_FREE_FAIL 129 
#define  OCS_HW_PORT_FREE_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int32_t
FUNC3(void *arg, ocs_hw_port_event_e event, void *data)
{
	ocs_t *ocs = arg;
	ocs_sli_port_t *sport = data;

	switch (event) {
	case OCS_HW_PORT_ALLOC_OK:
		FUNC0(ocs, "OCS_HW_PORT_ALLOC_OK\n");
		FUNC2(&sport->sm, OCS_EVT_SPORT_ALLOC_OK, NULL);
		break;
	case OCS_HW_PORT_ALLOC_FAIL:
		FUNC0(ocs, "OCS_HW_PORT_ALLOC_FAIL\n");
		FUNC2(&sport->sm, OCS_EVT_SPORT_ALLOC_FAIL, NULL);
		break;
	case OCS_HW_PORT_ATTACH_OK:
		FUNC0(ocs, "OCS_HW_PORT_ATTACH_OK\n");
		FUNC2(&sport->sm, OCS_EVT_SPORT_ATTACH_OK, NULL);
		break;
	case OCS_HW_PORT_ATTACH_FAIL:
		FUNC0(ocs, "OCS_HW_PORT_ATTACH_FAIL\n");
		FUNC2(&sport->sm, OCS_EVT_SPORT_ATTACH_FAIL, NULL);
		break;
	case OCS_HW_PORT_FREE_OK:
		FUNC0(ocs, "OCS_HW_PORT_FREE_OK\n");
		FUNC2(&sport->sm, OCS_EVT_SPORT_FREE_OK, NULL);
		break;
	case OCS_HW_PORT_FREE_FAIL:
		FUNC0(ocs, "OCS_HW_PORT_FREE_FAIL\n");
		FUNC2(&sport->sm, OCS_EVT_SPORT_FREE_FAIL, NULL);
		break;
	default:
		FUNC1(ocs, "unknown event %#x\n", event);
	}

	return 0;
}