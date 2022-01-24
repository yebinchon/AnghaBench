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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int IO_RTC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int rtc_reg ; 

__attribute__((used)) static inline u_char
FUNC2(int reg)
{

	if (rtc_reg != reg) {
		FUNC0(0x84);
		FUNC1(IO_RTC, reg);
		rtc_reg = reg;
		FUNC0(0x84);
	}
	return (FUNC0(IO_RTC + 1));
}