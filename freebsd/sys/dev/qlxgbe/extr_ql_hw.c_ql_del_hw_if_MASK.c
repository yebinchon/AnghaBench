#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {scalar_t__ init_intr_cnxt; } ;
struct TYPE_11__ {scalar_t__ num_sds_rings; scalar_t__ enable_soft_lro; TYPE_2__ flags; } ;
struct TYPE_13__ {TYPE_1__ hw; } ;
typedef  TYPE_3__ qla_host_t ;

/* Variables and functions */
 scalar_t__ Q8_MAX_INTR_VECTORS ; 
 scalar_t__ FUNC0 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void
FUNC6(qla_host_t *ha)
{
	uint32_t i;
	uint32_t num_msix;

	(void)FUNC5(ha);

	FUNC1(ha);

	if(FUNC2(ha))
		goto ql_del_hw_if_exit;

	if (ha->hw.flags.init_intr_cnxt) {
		for (i = 0; i < ha->hw.num_sds_rings; ) {

			if ((i + Q8_MAX_INTR_VECTORS) < ha->hw.num_sds_rings)
				num_msix = Q8_MAX_INTR_VECTORS;
			else
				num_msix = ha->hw.num_sds_rings - i;

			if (FUNC0(ha, i, num_msix, 0))
				break;

			i += num_msix;
		}

		ha->hw.flags.init_intr_cnxt = 0;
	}

ql_del_hw_if_exit:
	if (ha->hw.enable_soft_lro) {
		FUNC3(ha);
		FUNC4(ha);
	}

	return;
}