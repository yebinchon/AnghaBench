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
struct lapic {int la_timer_period; } ;
struct eventtimer {int et_frequency; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  LAT_MODE_DEADLINE ; 
 int /*<<< orphan*/  LAT_MODE_ONESHOT ; 
 int /*<<< orphan*/  LAT_MODE_PERIODIC ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apic_id ; 
 int /*<<< orphan*/  FUNC1 (struct eventtimer*,struct lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct lapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct lapic*) ; 
 scalar_t__ lapic_timer_tsc_deadline ; 
 struct lapic* lapics ; 

__attribute__((used)) static int
FUNC5(struct eventtimer *et, sbintime_t first, sbintime_t period)
{
	struct lapic *la;

	la = &lapics[FUNC0(apic_id)];
	if (period != 0) {
		FUNC1(et, la, LAT_MODE_PERIODIC);
		la->la_timer_period = ((uint32_t)et->et_frequency * period) >>
		    32;
		FUNC4(la);
	} else if (lapic_timer_tsc_deadline) {
		FUNC1(et, la, LAT_MODE_DEADLINE);
		la->la_timer_period = (et->et_frequency * first) >> 32;
		FUNC2(la);
	} else {
		FUNC1(et, la, LAT_MODE_ONESHOT);
		la->la_timer_period = ((uint32_t)et->et_frequency * first) >>
		    32;
		FUNC3(la);
	}
	return (0);
}