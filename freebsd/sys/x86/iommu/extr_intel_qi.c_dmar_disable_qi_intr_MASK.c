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
struct dmar_unit {int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int DMAR_IECTL_IM ; 
 int /*<<< orphan*/  DMAR_IECTL_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct dmar_unit *unit)
{
	uint32_t iectl;

	FUNC0(unit);
	FUNC2(FUNC1(unit), ("dmar%d: QI is not supported", unit->unit));
	iectl = FUNC3(unit, DMAR_IECTL_REG);
	FUNC4(unit, DMAR_IECTL_REG, iectl | DMAR_IECTL_IM);
}