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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  size_t u_int ;
struct dmar_unit {size_t irte_cnt; int /*<<< orphan*/  dev; TYPE_1__* irt; } ;
struct TYPE_2__ {int irte1; int irte2; } ;
typedef  TYPE_1__ dmar_irte_t ;

/* Variables and functions */
 int DMAR_IRTE1_P ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DMAR_IRTE2_SQ_RID ; 
 int DMAR_IRTE2_SVT_RID ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*,size_t,int) ; 

__attribute__((used)) static void
FUNC8(struct dmar_unit *unit, u_int idx, uint64_t low,
    uint16_t rid)
{
	dmar_irte_t *irte;
	uint64_t high;

	FUNC3(idx < unit->irte_cnt,
	    ("bad cookie %d %d", idx, unit->irte_cnt));
	irte = &(unit->irt[idx]);
	high = DMAR_IRTE2_SVT_RID | DMAR_IRTE2_SQ_RID |
	    FUNC0(rid);
	if (bootverbose) {
		FUNC4(unit->dev,
		    "programming irte[%d] rid %#x high %#jx low %#jx\n",
		    idx, rid, (uintmax_t)high, (uintmax_t)low);
	}
	FUNC1(unit);
	if ((irte->irte1 & DMAR_IRTE1_P) != 0) {
		/*
		 * The rte is already valid.  Assume that the request
		 * is to remap the interrupt for balancing.  Only low
		 * word of rte needs to be changed.  Assert that the
		 * high word contains expected value.
		 */
		FUNC3(irte->irte2 == high,
		    ("irte2 mismatch, %jx %jx", (uintmax_t)irte->irte2,
		    (uintmax_t)high));
		FUNC6(&irte->irte1, low);
	} else {
		FUNC5(&irte->irte2, high);
		FUNC5(&irte->irte1, low);
	}
	FUNC7(unit, idx, 1);
	FUNC2(unit);

}