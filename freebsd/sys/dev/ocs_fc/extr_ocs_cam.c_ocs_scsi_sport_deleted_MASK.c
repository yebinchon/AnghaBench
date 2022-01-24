#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ value; } ;
typedef  TYPE_1__ ocs_xport_stats_t ;
struct TYPE_10__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  xport; } ;
typedef  TYPE_2__ ocs_t ;
struct TYPE_11__ {TYPE_4__* tgt_data; int /*<<< orphan*/  is_vport; TYPE_2__* ocs; } ;
typedef  TYPE_3__ ocs_sport_t ;
struct TYPE_12__ {scalar_t__ role; TYPE_6__* vport; } ;
typedef  TYPE_4__ ocs_fcport ;
struct TYPE_13__ {int /*<<< orphan*/ * sport; } ;

/* Variables and functions */
 scalar_t__ KNOB_ROLE_NONE ; 
 int /*<<< orphan*/  OCS_XPORT_PORT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

void 
FUNC3(ocs_sport_t *sport)
{
	ocs_t *ocs = sport->ocs;
	ocs_fcport *fcp = NULL;

	ocs_xport_stats_t value;

	if (!sport->is_vport) {
		return;
	}

	fcp = sport->tgt_data;

	FUNC2(ocs->xport, OCS_XPORT_PORT_STATUS, &value);

	if (value.value == 0) {
		FUNC0(ocs, "PORT offline,.. skipping\n");
		return;
	}	

	if ((fcp->role != KNOB_ROLE_NONE)) {
		if(fcp->vport->sport != NULL) {
			FUNC0(ocs,"sport is not NULL, skipping\n");
			return;
		}

		FUNC1(ocs->domain, fcp->vport);
		return;
	}

}