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
struct rtl8366rb_softc {scalar_t__ chip_type; } ;
struct iicbus_ivar {int addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iicbus_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IIC_ENOACK ; 
 scalar_t__ RTL8366SR ; 
 int RTL_IICBUS_RETRIES ; 
 int /*<<< orphan*/  RTL_IICBUS_RETRY_SLEEP ; 
 int /*<<< orphan*/  RTL_IICBUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366rb_softc*) ; 
 int RTL_WAITOK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct rtl8366rb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iic_select_retries ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int op, int sleep)
{
	struct rtl8366rb_softc *sc;
	int err, i;
	device_t iicbus;
	struct iicbus_ivar *devi;
	int slave;

	sc = FUNC5(dev);

	iicbus = FUNC4(dev);
	devi = FUNC1(dev);
	slave = devi->addr;

	FUNC3((struct rtl8366rb_softc *)FUNC5(dev));

	if (sc->chip_type == RTL8366SR) {   // RTL8366SR work around
		// this is same work around at probe
		for (int i=3; i--; )
			FUNC2(FUNC4(FUNC4(dev)));
	}
	/*
	 * The chip does not use clock stretching when it is busy,
	 * instead ignoring the command. Retry a few times.
	 */
	for (i = RTL_IICBUS_RETRIES; i--; ) {
		err = FUNC6(iicbus, slave | op, RTL_IICBUS_TIMEOUT);
		if (err != IIC_ENOACK)
			break;
		if (sleep == RTL_WAITOK) {
			FUNC0(iic_select_retries);
			FUNC7("smi_select", RTL_IICBUS_RETRY_SLEEP);
		} else
			break;
	}
	return (err);
}