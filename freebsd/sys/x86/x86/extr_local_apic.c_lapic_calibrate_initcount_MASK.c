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
typedef  scalar_t__ u_long ;
struct lapic {int dummy; } ;

/* Variables and functions */
 scalar_t__ APIC_TIMER_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LAPIC_CCR_TIMER ; 
 scalar_t__ bootverbose ; 
 scalar_t__ count_freq ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int lapic_timer_divisor ; 
 int /*<<< orphan*/  FUNC2 (struct lapic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct lapic *la)
{
	u_long value;

	/* Start off with a divisor of 2 (power on reset default). */
	lapic_timer_divisor = 2;
	/* Try to calibrate the local APIC timer. */
	do {
		FUNC3(lapic_timer_divisor);
		FUNC2(la, APIC_TIMER_MAX_COUNT);
		FUNC0(1000000);
		value = APIC_TIMER_MAX_COUNT - FUNC1(LAPIC_CCR_TIMER);
		if (value != APIC_TIMER_MAX_COUNT)
			break;
		lapic_timer_divisor <<= 1;
	} while (lapic_timer_divisor <= 128);
	if (lapic_timer_divisor > 128)
		FUNC4("lapic: Divisor too big");
	if (bootverbose) {
		FUNC5("lapic: Divisor %lu, Frequency %lu Hz\n",
		    lapic_timer_divisor, value);
	}
	count_freq = value;
}