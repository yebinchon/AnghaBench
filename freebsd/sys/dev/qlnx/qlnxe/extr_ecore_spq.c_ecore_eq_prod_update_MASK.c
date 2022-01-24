#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; int /*<<< orphan*/  rel_pf_id; } ;

/* Variables and functions */
 scalar_t__ GTT_BAR0_MAP_REG_USDM_RAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ecore_hwfn	*p_hwfn,
			  u16			prod)
{
	u32 addr = GTT_BAR0_MAP_REG_USDM_RAM +
		FUNC2(p_hwfn->rel_pf_id);

	FUNC1(p_hwfn, addr, prod);

	/* keep prod updates ordered */
	FUNC0(p_hwfn->p_dev);
}