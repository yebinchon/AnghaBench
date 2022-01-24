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
typedef  int uint64_t ;

/* Variables and functions */
 int APICBASE_ENABLED ; 
 int APICBASE_X2APIC ; 
 int /*<<< orphan*/  MSR_APICBASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint64_t apic_base;

	apic_base = FUNC0(MSR_APICBASE);
	apic_base |= APICBASE_X2APIC | APICBASE_ENABLED;
	FUNC1(MSR_APICBASE, apic_base);
}