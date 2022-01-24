#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  fc_id; } ;
struct TYPE_10__ {TYPE_1__ rnode; int /*<<< orphan*/  instance_index; } ;
typedef  TYPE_2__ ocs_node_t ;
struct TYPE_11__ {TYPE_4__* tgt; } ;
typedef  TYPE_3__ ocs_fcport ;
struct TYPE_12__ {int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  port_id; int /*<<< orphan*/  state; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_4__ ocs_fc_target_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_TGT_STATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

uint32_t
FUNC2(ocs_node_t *node, ocs_fcport *fcp, uint32_t tgt_id)
{
	ocs_fc_target_t *tgt = NULL;
	
	tgt = &fcp->tgt[tgt_id];

	tgt->node_id = node->instance_index;
	tgt->state = OCS_TGT_STATE_VALID;
	
	tgt->port_id = node->rnode.fc_id;
	tgt->wwpn = FUNC1(node);
	tgt->wwnn = FUNC0(node);
	return 0;
}