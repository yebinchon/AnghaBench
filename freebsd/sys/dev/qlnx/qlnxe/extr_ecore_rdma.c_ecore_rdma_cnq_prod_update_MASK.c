#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {scalar_t__ max_queue_zones; scalar_t__ queue_zone_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ GTT_BAR0_MAP_REG_USDM_RAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

void FUNC4(void *rdma_cxt, u8 qz_offset, u16 prod)
{
	struct ecore_hwfn *p_hwfn;
	u16 qz_num;
	u32 addr;

	p_hwfn = (struct ecore_hwfn *)rdma_cxt;

	if (qz_offset > p_hwfn->p_rdma_info->max_queue_zones) {
		FUNC0(p_hwfn, false,
			  "queue zone offset %d is too large (max is %d)\n",
			  qz_offset, p_hwfn->p_rdma_info->max_queue_zones);
		return;
	}

	qz_num = p_hwfn->p_rdma_info->queue_zone_base + qz_offset;
	addr = GTT_BAR0_MAP_REG_USDM_RAM +
	       FUNC3(qz_num);

	FUNC2(p_hwfn, addr, prod);

	/* keep prod updates ordered */
	FUNC1(p_hwfn->p_dev);
}