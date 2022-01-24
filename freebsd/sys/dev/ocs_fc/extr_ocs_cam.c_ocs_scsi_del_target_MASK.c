#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ocs_softc {int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  ocs_scsi_del_target_reason_e ;
struct TYPE_11__ {TYPE_1__* sport; struct ocs_softc* ocs; } ;
typedef  TYPE_2__ ocs_node_t ;
struct TYPE_12__ {int /*<<< orphan*/  ldt; TYPE_4__* tgt; } ;
typedef  TYPE_3__ ocs_fcport ;
struct TYPE_13__ {int gone_timer; int /*<<< orphan*/  state; } ;
typedef  TYPE_4__ ocs_fc_target_t ;
typedef  int int32_t ;
struct TYPE_10__ {TYPE_3__* tgt_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCS_TGT_STATE_LOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ocs_softc*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  ocs_ldt ; 
 int /*<<< orphan*/  FUNC3 (struct ocs_softc*,char*) ; 
 int FUNC4 (TYPE_3__*,TYPE_2__*) ; 

int32_t
FUNC5(ocs_node_t *node, ocs_scsi_del_target_reason_e reason)
{
	struct ocs_softc *ocs = node->ocs;
	ocs_fcport	*fcp = NULL;
	ocs_fc_target_t *tgt = NULL;
	int32_t	tgt_id;

	if (ocs == NULL) {
		FUNC3(ocs,"OCS is NULL \n");
		return -1;
	}

	fcp = node->sport->tgt_data;
	if (fcp == NULL) {
		FUNC3(ocs,"FCP is NULL \n");
		return -1;
	}

	tgt_id = FUNC4(fcp, node);
	if (tgt_id == -1) {
		FUNC3(ocs,"target is invalid\n");
		return -1;
	}

	tgt = &fcp->tgt[tgt_id];

	// IF in shutdown delete target.
	if(!ocs->attached) {
		FUNC2(ocs, fcp, tgt_id);
	} else {
	
		tgt->state = OCS_TGT_STATE_LOST;
		tgt->gone_timer = 30;
		if (!FUNC0(&fcp->ldt)) {
			FUNC1(&fcp->ldt, hz, ocs_ldt, fcp);
		}
	}
	
	return 0;
}