#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  hw; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_12__ {TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_node_t ;
struct TYPE_13__ {int /*<<< orphan*/  payload; int /*<<< orphan*/  header; } ;
typedef  TYPE_3__ ocs_node_cb_t ;
struct TYPE_14__ {int /*<<< orphan*/  payload; int /*<<< orphan*/  header; } ;
typedef  TYPE_4__ ocs_hw_sequence_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  cbdata ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_EVT_FCP_CMD_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 

int32_t
FUNC3(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
	ocs_node_cb_t cbdata;
	ocs_t *ocs = node->ocs;

	FUNC1(&cbdata, 0, sizeof(cbdata));
	cbdata.header = seq->header;
	cbdata.payload = seq->payload;
	FUNC2(node, OCS_EVT_FCP_CMD_RCVD, &cbdata);
	FUNC0(&ocs->hw, seq);
	return 0;
}