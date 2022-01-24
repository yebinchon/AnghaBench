#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct dmar_unit {int /*<<< orphan*/  hw_cap; } ;
typedef  unsigned long long dmar_gaddr_t ;
struct TYPE_3__ {unsigned long long agaw; int cap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* sagaw_bits ; 

int
FUNC3(struct dmar_unit *unit, dmar_gaddr_t maxaddr, bool allow_less)
{
	int i;

	for (i = 0; i < FUNC2(sagaw_bits); i++) {
		if ((1ULL << sagaw_bits[i].agaw) >= maxaddr &&
		    (FUNC0(unit->hw_cap) & sagaw_bits[i].cap) != 0)
			break;
	}
	if (allow_less && i == FUNC2(sagaw_bits)) {
		do {
			i--;
		} while ((FUNC0(unit->hw_cap) & sagaw_bits[i].cap)
		    == 0);
	}
	if (i < FUNC2(sagaw_bits))
		return (sagaw_bits[i].agaw);
	FUNC1(0, ("no mgaw for maxaddr %jx allow_less %d",
	    (uintmax_t) maxaddr, allow_less));
	return (-1);
}