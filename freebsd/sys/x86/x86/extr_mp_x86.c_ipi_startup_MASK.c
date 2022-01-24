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

/* Variables and functions */
 int APIC_DELMODE_INIT ; 
 int APIC_DELMODE_STARTUP ; 
 int APIC_DESTMODE_PHY ; 
 int APIC_DEST_DESTFLD ; 
 int APIC_LEVEL_ASSERT ; 
 int APIC_LEVEL_DEASSERT ; 
 int APIC_TRIGMOD_EDGE ; 
 int APIC_TRIGMOD_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void
FUNC4(int apic_id, int vector)
{

	/*
	 * This attempts to follow the algorithm described in the
	 * Intel Multiprocessor Specification v1.4 in section B.4.
	 * For each IPI, we allow the local APIC ~20us to deliver the
	 * IPI.  If that times out, we panic.
	 */

	/*
	 * first we do an INIT IPI: this INIT IPI might be run, resetting
	 * and running the target CPU. OR this INIT IPI might be latched (P5
	 * bug), CPU waiting for STARTUP IPI. OR this INIT IPI might be
	 * ignored.
	 */
	FUNC1(APIC_DEST_DESTFLD | APIC_TRIGMOD_LEVEL |
	    APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_INIT, apic_id);
	FUNC2(100);

	/* Explicitly deassert the INIT IPI. */
	FUNC1(APIC_DEST_DESTFLD | APIC_TRIGMOD_LEVEL |
	    APIC_LEVEL_DEASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_INIT,
	    apic_id);

	FUNC0(10000);		/* wait ~10mS */

	/*
	 * next we do a STARTUP IPI: the previous INIT IPI might still be
	 * latched, (P5 bug) this 1st STARTUP would then terminate
	 * immediately, and the previously started INIT IPI would continue. OR
	 * the previous INIT IPI has already run. and this STARTUP IPI will
	 * run. OR the previous INIT IPI was ignored. and this STARTUP IPI
	 * will run.
	 */
	FUNC1(APIC_DEST_DESTFLD | APIC_TRIGMOD_EDGE |
	    APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_STARTUP |
	    vector, apic_id);
	if (!FUNC2(100))
		FUNC3("Failed to deliver first STARTUP IPI to APIC %d",
		    apic_id);
	FUNC0(200);		/* wait ~200uS */

	/*
	 * finally we do a 2nd STARTUP IPI: this 2nd STARTUP IPI should run IF
	 * the previous STARTUP IPI was cancelled by a latched INIT IPI. OR
	 * this STARTUP IPI will be ignored, as only ONE STARTUP IPI is
	 * recognized after hardware RESET or INIT IPI.
	 */
	FUNC1(APIC_DEST_DESTFLD | APIC_TRIGMOD_EDGE |
	    APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_STARTUP |
	    vector, apic_id);
	if (!FUNC2(100))
		FUNC3("Failed to deliver second STARTUP IPI to APIC %d",
		    apic_id);

	FUNC0(200);		/* wait ~200uS */
}