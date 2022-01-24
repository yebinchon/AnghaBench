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
struct jz4780_rtc_softc {int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct jz4780_rtc_softc*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  JZ_HSPR ; 
 int /*<<< orphan*/  JZ_RTSR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct jz4780_rtc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jz4780_rtc_spec ; 
 int FUNC6 (struct jz4780_rtc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct jz4780_rtc_softc *sc = FUNC3(dev);
	uint32_t scratch;
	int ret;

	sc->dev = dev;

	if (FUNC1(dev, jz4780_rtc_spec, sc->res)) {
		FUNC4(dev, "could not allocate resources for device\n");
		return (ENXIO);
	}

	scratch = FUNC0(sc, JZ_HSPR);
	if (scratch != 0x12345678) {
		ret = FUNC6(sc, JZ_HSPR, 0x12345678);
		if (ret == 0)
			ret = FUNC6(sc, JZ_RTSR, 0);
		if (ret) {
			FUNC4(dev, "Unable to write RTC registers\n");
			FUNC5(dev);
			return (ret);
		}
	}
	FUNC2(dev, 1000000); /* Register 1 HZ clock */
	return (0);
}