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
 int APIC_DELMODE_NMI ; 
 int APIC_DESTMODE_PHY ; 
 int APIC_DEST_DESTFLD ; 
 int APIC_LEVEL_ASSERT ; 
 int APIC_TRIGMOD_EDGE ; 
 int /*<<< orphan*/  boot_cpu_id ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(void)
{

	/*
	 * Deliver NMI to the boot processor.  Why not?
	 */
	FUNC0(APIC_DEST_DESTFLD | APIC_TRIGMOD_EDGE |
	    APIC_LEVEL_ASSERT | APIC_DESTMODE_PHY | APIC_DELMODE_NMI,
	    boot_cpu_id);
	FUNC1(-1);
}