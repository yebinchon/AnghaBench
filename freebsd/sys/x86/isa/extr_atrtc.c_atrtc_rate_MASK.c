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
 unsigned int RTCSA_DIVIDER ; 
 int /*<<< orphan*/  RTC_STATUSA ; 
 unsigned int rtc_statusa ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC1(unsigned rate)
{

	rtc_statusa = RTCSA_DIVIDER | rate;
	FUNC0(RTC_STATUSA, rtc_statusa);
}