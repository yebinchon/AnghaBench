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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_long ;
struct tte {int tte_data; int /*<<< orphan*/  tte_vpn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tte*,int) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int TD_8K ; 
 int TD_P ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TD_REF ; 
 int TD_V ; 
 int /*<<< orphan*/  TS_8K ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tte* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(vm_offset_t va, vm_paddr_t pa, u_long flags)
{
	struct tte *tp;

	tp = FUNC3(va);
	FUNC0(KTR_PMAP, "pmap_kenter_flags: va=%#lx pa=%#lx tp=%p data=%#lx",
	    va, pa, tp, tp->tte_data);
	tp->tte_vpn = FUNC2(va, TS_8K);
	tp->tte_data = TD_V | TD_8K | FUNC1(pa) | TD_REF | TD_P | flags;
}