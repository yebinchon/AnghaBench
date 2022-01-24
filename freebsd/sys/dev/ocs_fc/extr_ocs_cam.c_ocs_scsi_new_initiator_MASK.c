#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ac_device_changed {int arrived; int /*<<< orphan*/  target; int /*<<< orphan*/  port; int /*<<< orphan*/  wwpn; } ;
struct ac_contract {scalar_t__ contract_data; int /*<<< orphan*/  contract_number; } ;
struct TYPE_11__ {int /*<<< orphan*/  io_high_watermark; } ;
typedef  TYPE_3__ ocs_t ;
struct TYPE_10__ {int /*<<< orphan*/  fc_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  instance_index; TYPE_2__ rnode; TYPE_1__* sport; TYPE_3__* ocs; } ;
typedef  TYPE_4__ ocs_node_t ;
struct TYPE_13__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_5__ ocs_fcport ;
typedef  int int32_t ;
struct TYPE_9__ {TYPE_5__* tgt_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_CONTRACT ; 
 int /*<<< orphan*/  AC_CONTRACT_DEV_CHG ; 
 int /*<<< orphan*/  OCS_RSVD_INI_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac_contract*) ; 

int32_t
FUNC4(ocs_node_t *node)
{
	ocs_t	*ocs = node->ocs;
	struct ac_contract ac;
	struct ac_device_changed *adc;

	ocs_fcport	*fcp = NULL;

	fcp = node->sport->tgt_data;
	if (fcp == NULL) {
		FUNC1(ocs, "FCP is NULL \n");
		return 1;
	}	

	/*
	 * Update the IO watermark by decrementing it by the
	 * number of IOs reserved for each initiator.
	 */
	FUNC0(&ocs->io_high_watermark, OCS_RSVD_INI_IO);

	ac.contract_number = AC_CONTRACT_DEV_CHG;
	adc = (struct ac_device_changed *) ac.contract_data;
	adc->wwpn = FUNC2(node);
	adc->port = node->rnode.fc_id;
	adc->target = node->instance_index;
	adc->arrived = 1;
	FUNC3(AC_CONTRACT, fcp->path, &ac);

	return 0;
}