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
struct lapic {int lvt_timer_base; int lvt_timer_last; scalar_t__ la_timer_period; } ;

/* Variables and functions */
 int APIC_LVTT_TM ; 
 int APIC_LVTT_TM_TSCDLT ; 
 int APIC_LVT_M ; 
 int /*<<< orphan*/  LAPIC_LVT_TIMER ; 
 int /*<<< orphan*/  MSR_TSC_DEADLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  x2apic_mode ; 

__attribute__((used)) static void
FUNC4(struct lapic *la)
{
	uint32_t value;

	value = la->lvt_timer_base;
	value &= ~(APIC_LVTT_TM | APIC_LVT_M);
	value |= APIC_LVTT_TM_TSCDLT;
	if (value != la->lvt_timer_last) {
		la->lvt_timer_last = value;
		FUNC0(LAPIC_LVT_TIMER, value);
		if (!x2apic_mode)
			FUNC1();
	}
	FUNC3(MSR_TSC_DEADLINE, la->la_timer_period + FUNC2());
}