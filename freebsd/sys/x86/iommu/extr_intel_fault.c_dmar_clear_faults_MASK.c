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
typedef  int uint32_t ;
struct dmar_unit {int /*<<< orphan*/  hw_cap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DMAR_FRCD2_F32 ; 
 int DMAR_FSTS_REG ; 
 int FUNC2 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct dmar_unit *unit)
{
	uint32_t frec, frir, fsts;
	int i;

	for (i = 0; i < FUNC1(unit->hw_cap); i++) {
		frir = (FUNC0(unit->hw_cap) + i) * 16;
		frec = FUNC2(unit, frir + 12);
		if ((frec & DMAR_FRCD2_F32) == 0)
			continue;
		FUNC3(unit, frir + 12, DMAR_FRCD2_F32);
	}
	fsts = FUNC2(unit, DMAR_FSTS_REG);
	FUNC3(unit, DMAR_FSTS_REG, fsts);
}