#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_15__ {int status; int /*<<< orphan*/  speed; int /*<<< orphan*/  topology; } ;
typedef  TYPE_3__ sli4_link_event_t ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_4__ ocs_t ;
struct TYPE_14__ {int /*<<< orphan*/  domain; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* domain ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_17__ {TYPE_4__* os; TYPE_2__ args; TYPE_1__ callback; int /*<<< orphan*/ ** domains; TYPE_3__ link; int /*<<< orphan*/  loop_map; int /*<<< orphan*/  sli; } ;
typedef  TYPE_5__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_domain_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_CMD_NOWAIT ; 
 int /*<<< orphan*/  OCS_HW_DOMAIN_LOST ; 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_M_NOWAIT ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI4_FCOE_FCF_TABLE_FIRST ; 
 size_t SLI4_MAX_FCFI ; 
#define  SLI_LINK_STATUS_DOWN 129 
#define  SLI_LINK_STATUS_UP 128 
 int /*<<< orphan*/  SLI_LINK_TOPO_LOOP ; 
 int /*<<< orphan*/  SLI_LINK_TOPO_NPORT ; 
 int /*<<< orphan*/  __ocs_read_topology_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC10(void *ctx, void *e)
{
	ocs_hw_t	*hw = ctx;
	sli4_link_event_t *event = e;
	ocs_domain_t	*d = NULL;
	uint32_t	i = 0;
	int32_t		rc = OCS_HW_RTN_ERROR;
	ocs_t 		*ocs = hw->os;

	FUNC3(hw);

	switch (event->status) {
	case SLI_LINK_STATUS_UP:

		hw->link = *event;

		if (SLI_LINK_TOPO_NPORT == event->topology) {
			FUNC0(ocs->dev, "Link Up, NPORT, speed is %d\n", event->speed);
			FUNC4(hw, SLI4_FCOE_FCF_TABLE_FIRST);
		} else if (SLI_LINK_TOPO_LOOP == event->topology) {
			uint8_t	*buf = NULL;
			FUNC0(ocs->dev, "Link Up, LOOP, speed is %d\n", event->speed);

			buf = FUNC7(hw->os, SLI4_BMBX_SIZE, OCS_M_NOWAIT);
			if (!buf) {
				FUNC5(hw->os, "no buffer for command\n");
				break;
			}

			if (FUNC8(&hw->sli, buf, SLI4_BMBX_SIZE, &hw->loop_map)) {
				rc = FUNC2(hw, buf, OCS_CMD_NOWAIT, __ocs_read_topology_cb, NULL);
			}

			if (rc != OCS_HW_RTN_SUCCESS) {
				FUNC6(hw->os, "READ_TOPOLOGY failed\n");
				FUNC1(hw->os, buf, SLI4_BMBX_SIZE);
			}
		} else {
			FUNC0(ocs->dev, "Link Up, unsupported topology (%#x), speed is %d\n",
					event->topology, event->speed);
		}
		break;
	case SLI_LINK_STATUS_DOWN:
		FUNC0(ocs->dev, "Link Down\n");

		hw->link.status = event->status;

		for (i = 0; i < SLI4_MAX_FCFI; i++) {
			d = hw->domains[i];
			if (d != NULL &&
			    hw->callback.domain != NULL) {
				hw->callback.domain(hw->args.domain, OCS_HW_DOMAIN_LOST, d);
			}
		}
		break;
	default:
		FUNC6(hw->os, "unhandled link status %#x\n", event->status);
		break;
	}

	return 0;
}