#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_19__ {TYPE_2__* app; } ;
struct TYPE_20__ {int enable_rscn; int /*<<< orphan*/  display_name; int /*<<< orphan*/ * mgmt_functions; int /*<<< orphan*/  node_group_dir_list; scalar_t__ instance_index; int /*<<< orphan*/  node_group_lock; TYPE_4__* ocs; int /*<<< orphan*/  wwnn_str; scalar_t__ wwnn; scalar_t__ wwpn; int /*<<< orphan*/  fc_id; int /*<<< orphan*/  service_params; void* enable_tgt; void* enable_ini; TYPE_1__ sm; int /*<<< orphan*/  node_list; int /*<<< orphan*/  lookup; TYPE_3__* domain; } ;
typedef  TYPE_2__ ocs_sport_t ;
struct TYPE_21__ {TYPE_4__* ocs; int /*<<< orphan*/  sport_list; TYPE_2__* sport; int /*<<< orphan*/  service_params; int /*<<< orphan*/  sport_instance_count; } ;
typedef  TYPE_3__ ocs_domain_t ;
typedef  int /*<<< orphan*/  fc_plogi_payload_t ;
struct TYPE_22__ {int ctrlmask; } ;

/* Variables and functions */
 int OCS_CTRLMASK_INHIBIT_INITIATOR ; 
 int OCS_M_NOWAIT ; 
 int OCS_M_ZERO ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*,unsigned long long,unsigned long long) ; 
 TYPE_2__* FUNC9 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ocs_node_group_dir_t ; 
 int /*<<< orphan*/  ocs_node_t ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,...) ; 
 TYPE_2__* FUNC12 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  sport_mgmt_functions ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

ocs_sport_t *
FUNC15(ocs_domain_t *domain, uint64_t wwpn, uint64_t wwnn, uint32_t fc_id, uint8_t enable_ini, uint8_t enable_tgt)
{
	ocs_sport_t *sport;

	if (domain->ocs->ctrlmask & OCS_CTRLMASK_INHIBIT_INITIATOR) {
		enable_ini = 0;
	}

	/* Return a failure if this sport has already been allocated */
	if (wwpn != 0) {
		sport = FUNC12(domain, wwnn, wwpn);
		if (sport != NULL) {
			FUNC8(domain->ocs, "Failed: SPORT %016llx  %016llx already allocated\n",
				     (unsigned long long)wwnn, (unsigned long long)wwpn);
			return NULL;
		}
	}

	sport = FUNC9(domain->ocs, sizeof(*sport), OCS_M_NOWAIT | OCS_M_ZERO);
	if (sport) {
		sport->ocs = domain->ocs;
		FUNC11(sport->display_name, sizeof(sport->display_name), "------");
		sport->domain = domain;
		sport->lookup = FUNC14(domain->ocs);
		sport->instance_index = domain->sport_instance_count++;
		FUNC13(sport);
		FUNC5(&sport->node_list, ocs_node_t, link);
		sport->sm.app = sport;
		sport->enable_ini = enable_ini;
		sport->enable_tgt = enable_tgt;
		sport->enable_rscn = (sport->enable_ini || (sport->enable_tgt && FUNC0(sport->ocs)));

		/* Copy service parameters from domain */
		FUNC10(sport->service_params, domain->service_params, sizeof(fc_plogi_payload_t));

		/* Update requested fc_id */
		sport->fc_id = fc_id;

		/* Update the sport's service parameters for the new wwn's */
		sport->wwpn = wwpn;
		sport->wwnn = wwnn;
		FUNC11(sport->wwnn_str, sizeof(sport->wwnn_str), "%016llx" , (unsigned long long)wwnn);

		/* Initialize node group list */
		FUNC6(sport->ocs, &sport->node_group_lock, "node_group_lock[%d]", sport->instance_index);
		FUNC5(&sport->node_group_dir_list, ocs_node_group_dir_t, link);

		/* if this is the "first" sport of the domain, then make it the "phys" sport */
		FUNC1(domain);
			if (FUNC4(&domain->sport_list)) {
				domain->sport = sport;
			}

			FUNC3(&domain->sport_list, sport);
		FUNC2(domain);

		sport->mgmt_functions = &sport_mgmt_functions;

		FUNC7(domain->ocs, "[%s] allocate sport\n", sport->display_name);
	}
	return sport;
}