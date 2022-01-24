#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct tte {int tte_data; int /*<<< orphan*/  tte_vpn; } ;
struct TYPE_5__ {scalar_t__ color; } ;
struct TYPE_6__ {TYPE_1__ md; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ DCACHE_COLORS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TD_8K ; 
 int TD_CP ; 
 int TD_CV ; 
 int FUNC3 (scalar_t__) ; 
 int TD_V ; 
 int TD_W ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  TS_8K ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ dcache_color_ignore ; 
 int /*<<< orphan*/  qmap_addr ; 
 struct tte* FUNC8 (scalar_t__) ; 

vm_offset_t
FUNC9(vm_page_t m)
{
	vm_paddr_t pa;
	vm_offset_t qaddr;
	struct tte *tp;

	pa = FUNC6(m);
	if (dcache_color_ignore != 0 || m->md.color == FUNC0(pa))
		return (FUNC4(pa));

	FUNC7();
	qaddr = FUNC2(qmap_addr);
	qaddr += (PAGE_SIZE * ((DCACHE_COLORS + FUNC0(pa) -
	    FUNC0(qaddr)) % DCACHE_COLORS));
	tp = FUNC8(qaddr);

	FUNC1(tp->tte_data == 0, ("pmap_quick_enter_page: PTE busy"));
	
	tp->tte_data = TD_V | TD_8K | FUNC3(pa) | TD_CP | TD_CV | TD_W;
	tp->tte_vpn = FUNC5(qaddr, TS_8K);

	return (qaddr);
}