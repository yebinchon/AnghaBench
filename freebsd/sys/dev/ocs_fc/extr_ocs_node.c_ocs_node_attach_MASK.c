#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hw; scalar_t__ enable_hlm; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_13__ {TYPE_4__* domain; } ;
typedef  TYPE_2__ ocs_sport_t ;
struct TYPE_14__ {int /*<<< orphan*/  sparm_dma_buf; int /*<<< orphan*/  rnode; scalar_t__ service_params; int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; TYPE_1__* ocs; TYPE_2__* sport; } ;
typedef  TYPE_3__ ocs_node_t ;
struct TYPE_15__ {int /*<<< orphan*/  attached; } ;
typedef  TYPE_4__ ocs_domain_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

int32_t
FUNC10(ocs_node_t *node)
{
	int32_t rc = 0;
	ocs_sport_t *sport = node->sport;
	ocs_domain_t *domain = sport->domain;
	ocs_t *ocs = node->ocs;

	if (!domain->attached) {
		FUNC3(ocs, "Warning: ocs_node_attach with unattached domain\n");
		return -1;
	}
	/* Update node->wwpn/wwnn */

	FUNC4(node->wwpn, sizeof(node->wwpn), FUNC6(node));
	FUNC4(node->wwnn, sizeof(node->wwnn), FUNC5(node));

	if (ocs->enable_hlm) {
		FUNC7(node);
	}

	FUNC1(&node->sparm_dma_buf, node->service_params+4, sizeof(node->service_params)-4);

	/* take lock to protect node->rnode.attached */
	FUNC8(node);
		rc = FUNC2(&ocs->hw, &node->rnode, &node->sparm_dma_buf);
		if (FUNC0(rc)) {
			FUNC3(ocs, "ocs_hw_node_attach failed: %d\n", rc);
		}
	FUNC9(node);

	return rc;
}