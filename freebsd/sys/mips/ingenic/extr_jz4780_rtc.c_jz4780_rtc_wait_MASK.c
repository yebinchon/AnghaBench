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
struct jz4780_rtc_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct jz4780_rtc_softc*,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  JZ_RTCCR ; 
 int JZ_RTCCR_WRDY ; 
 int JZ_RTC_TIMEOUT ; 

__attribute__((used)) static int
FUNC1(struct jz4780_rtc_softc *sc)
{
	int timeout;

	timeout = JZ_RTC_TIMEOUT;
	while (timeout-- > 0) {
		if (FUNC0(sc, JZ_RTCCR) & JZ_RTCCR_WRDY)
			return (0);
	}
	return (EIO);
}