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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RB_HALT ; 
 int RB_POWEROFF ; 
 int /*<<< orphan*/  SHUTDOWN_poweroff ; 
 int /*<<< orphan*/  SHUTDOWN_reboot ; 

__attribute__((used)) static void
FUNC1(void *arg, int howto)
{
	/*
	 * Inform the hypervisor that shutdown is complete.
	 * This is not necessary in HVM domains since Xen
	 * emulates ACPI in that mode and FreeBSD's ACPI
	 * support will request this transition.
	 */
	if (howto & (RB_HALT | RB_POWEROFF))
		FUNC0(SHUTDOWN_poweroff);
	else
		FUNC0(SHUTDOWN_reboot);
}