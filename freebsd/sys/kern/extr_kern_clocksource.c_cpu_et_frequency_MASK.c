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
typedef  void* uint64_t ;
struct eventtimer {void* et_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct eventtimer* timer ; 

void
FUNC3(struct eventtimer *et, uint64_t newfreq)
{

	FUNC0();
	if (et == timer) {
		FUNC2(0);
		et->et_frequency = newfreq;
		FUNC2(1);
	} else
		et->et_frequency = newfreq;
	FUNC1();
}