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
typedef  int /*<<< orphan*/  vm_page_t ;
struct dmar_unit {int hw_gcmd; int /*<<< orphan*/  ctx_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  DMAR_GCMD_REG ; 
 int DMAR_GCMD_SRTP ; 
 int /*<<< orphan*/  DMAR_GSTS_REG ; 
 int DMAR_GSTS_RTPS ; 
 int /*<<< orphan*/  DMAR_RTADDR_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct dmar_unit *unit)
{
	vm_page_t root_entry;
	int error;

	/*
	 * Access to the GCMD register must be serialized while the
	 * command is submitted.
	 */
	FUNC0(unit);

	FUNC2(unit->ctx_obj);
	root_entry = FUNC8(unit->ctx_obj, 0);
	FUNC3(unit->ctx_obj);
	FUNC7(unit, DMAR_RTADDR_REG, FUNC4(root_entry));
	FUNC6(unit, DMAR_GCMD_REG, unit->hw_gcmd | DMAR_GCMD_SRTP);
	FUNC1(((FUNC5(unit, DMAR_GSTS_REG) & DMAR_GSTS_RTPS)
	    != 0));
	return (error);
}