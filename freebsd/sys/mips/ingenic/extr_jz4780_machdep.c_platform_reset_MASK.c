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
 scalar_t__ JZ_TCU_BASE ; 
 scalar_t__ JZ_WDOG_TCER ; 
 scalar_t__ JZ_WDOG_TCNT ; 
 scalar_t__ JZ_WDOG_TCSR ; 
 scalar_t__ JZ_WDOG_TDR ; 
 int TCER_ENABLE ; 
 int TCSR_DIV_256 ; 
 int TCSR_RTC_EN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 

void
FUNC1(void)
{
	/*
	 * For now, provoke a watchdog reset in about a second, so UART buffers
	 * have a fighting chance to flush before we pull the plug
	 */
	FUNC0(JZ_TCU_BASE + JZ_WDOG_TCER, 0);	/* disable watchdog */
	FUNC0(JZ_TCU_BASE + JZ_WDOG_TCNT, 0);	/* reset counter */
	FUNC0(JZ_TCU_BASE + JZ_WDOG_TDR, 128);	/* wait for ~1s */
	FUNC0(JZ_TCU_BASE + JZ_WDOG_TCSR, TCSR_RTC_EN | TCSR_DIV_256);
	FUNC0(JZ_TCU_BASE + JZ_WDOG_TCER, TCER_ENABLE);	/* fire! */

	/* Wait for reset */
	while (1)
		;
}