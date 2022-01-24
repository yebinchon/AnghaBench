#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef  TYPE_1__ sli4_mbox_command_header_t ;
typedef  int /*<<< orphan*/  ocs_sm_event_t ;
struct TYPE_6__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  indicator; } ;
typedef  TYPE_2__ ocs_sli_port_t ;
struct TYPE_7__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_3__ ocs_hw_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_ERROR ; 
 int /*<<< orphan*/  OCS_EVT_RESPONSE ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC5(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
	ocs_sli_port_t *sport = arg;
	sli4_mbox_command_header_t	*hdr = (sli4_mbox_command_header_t *)mqe;
	ocs_sm_event_t	evt;
	uint8_t *mqecpy;

	if (status || hdr->status) {
		FUNC0(hw->os, "bad status vpi=%#x st=%x hdr=%x\n",
			      sport->indicator, status, hdr->status);
		evt = OCS_EVT_ERROR;
	} else {
		evt = OCS_EVT_RESPONSE;
	}

	/*
	 * In this case we have to malloc a mailbox command buffer, as it is reused
	 * in the state machine post event call, and eventually freed
	 */
	mqecpy = FUNC2(hw->os, SLI4_BMBX_SIZE, OCS_M_ZERO | OCS_M_NOWAIT);
	if (mqecpy == NULL) {
		FUNC1(hw->os, "malloc mqecpy failed\n");
		return -1;
	}
	FUNC3(mqecpy, mqe, SLI4_BMBX_SIZE);

	FUNC4(&sport->ctx, evt, mqecpy);

	return 0;
}