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
struct dmar_unit {int /*<<< orphan*/  qi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int DMAR_CCMD_CIRG_GLOB ; 
 int DMAR_CCMD_ICC ; 
 int DMAR_CCMD_ICC32 ; 
 scalar_t__ DMAR_CCMD_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct dmar_unit*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,scalar_t__,int) ; 

int
FUNC5(struct dmar_unit *unit)
{
	int error;

	/*
	 * Access to the CCMD register must be serialized while the
	 * command is submitted.
	 */
	FUNC0(unit);
	FUNC2(!unit->qi_enabled, ("QI enabled"));

	/*
	 * The DMAR_CCMD_ICC bit in the upper dword should be written
	 * after the low dword write is completed.  Amd64
	 * dmar_write8() does not have this issue, i386 dmar_write8()
	 * writes the upper dword last.
	 */
	FUNC4(unit, DMAR_CCMD_REG, DMAR_CCMD_ICC | DMAR_CCMD_CIRG_GLOB);
	FUNC1(((FUNC3(unit, DMAR_CCMD_REG + 4) & DMAR_CCMD_ICC32)
	    == 0));
	return (error);
}