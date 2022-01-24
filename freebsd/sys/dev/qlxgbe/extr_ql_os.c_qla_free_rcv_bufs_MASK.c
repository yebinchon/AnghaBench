#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qla_rx_ring_t ;
struct TYPE_7__ {int num_sds_rings; TYPE_1__* sds; } ;
struct TYPE_8__ {TYPE_2__ hw; scalar_t__ rx_ring; int /*<<< orphan*/ * rx_tag; } ;
typedef  TYPE_3__ qla_host_t ;
struct TYPE_6__ {scalar_t__ rx_free; int /*<<< orphan*/ * rxb_free; scalar_t__ sdsr_next; } ;

/* Variables and functions */
 int MAX_RDS_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3(qla_host_t *ha)
{
	int		i;

	FUNC2(ha);

	if (ha->rx_tag != NULL) {
		FUNC0(ha->rx_tag);
		ha->rx_tag = NULL;
	}

	FUNC1((void *)ha->rx_ring, (sizeof(qla_rx_ring_t) * MAX_RDS_RINGS));

	for (i = 0; i < ha->hw.num_sds_rings; i++) {
		ha->hw.sds[i].sdsr_next = 0;
		ha->hw.sds[i].rxb_free = NULL;
		ha->hw.sds[i].rx_free = 0;
	}

	return;
}