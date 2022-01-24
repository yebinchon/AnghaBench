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
typedef  int /*<<< orphan*/  uint32_t ;
struct jz4780_rtc_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct jz4780_rtc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_rtc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int JZ_RTC_TIMEOUT ; 
 int /*<<< orphan*/  JZ_WENR ; 
 int /*<<< orphan*/  JZ_WENR_PAT ; 
 int JZ_WENR_WEN ; 
 int FUNC2 (struct jz4780_rtc_softc*) ; 

__attribute__((used)) static int
FUNC3(struct jz4780_rtc_softc *sc, uint32_t reg, uint32_t val)
{
	int ret, timeout;

	ret = FUNC2(sc);
	if (ret != 0)
		return (ret);

	FUNC1(sc, JZ_WENR, JZ_WENR_PAT);

	ret = FUNC2(sc);
	if (ret)
		return ret;

	timeout = JZ_RTC_TIMEOUT;
	while (timeout-- > 0) {
		if (FUNC0(sc, JZ_WENR) & JZ_WENR_WEN)
			break;
	}
	if (timeout < 0)
		return (EIO);

	FUNC1(sc, reg, val);
	return 0;
}