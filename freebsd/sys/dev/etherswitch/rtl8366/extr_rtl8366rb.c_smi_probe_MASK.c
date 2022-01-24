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
typedef  char uint16_t ;
struct rtl8366rb_softc {int /*<<< orphan*/  chip_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int /*<<< orphan*/  IIC_LAST_READ ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int /*<<< orphan*/  RTL8366RB ; 
 int RTL8366RB_CIR ; 
 char RTL8366RB_CIR_ID8366RB ; 
 int /*<<< orphan*/  RTL8366SR ; 
 int RTL8366SR_CIR ; 
 char RTL8366SR_CIR_ID8366SR ; 
 int RTL8366_IIC_ADDR ; 
 int RTL_IICBUS_READ ; 
 int /*<<< orphan*/  RTL_IICBUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl8366rb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct rtl8366rb_softc *sc;
	device_t iicbus, iicha;
	int err, i, j;
	uint16_t chipid;
	char bytes[2];
	int xferd;

	sc = FUNC3(dev);

	iicbus = FUNC2(dev);
	iicha = FUNC2(iicbus);

	for (i = 0; i < 2; ++i) {
		FUNC7(iicbus, IIC_FASTEST, RTL8366_IIC_ADDR, NULL);
		for (j=3; j--; ) {
			FUNC1(iicha);
			/*
			 * we go directly to the host adapter because iicbus.c
			 * only issues a stop on a bus that was successfully started.
			 */
		}
		err = FUNC6(iicbus, dev, IIC_WAIT);
		if (err != 0)
			goto out;
		err = FUNC8(iicbus, RTL8366_IIC_ADDR | RTL_IICBUS_READ, RTL_IICBUS_TIMEOUT);
		if (err != 0)
			goto out;
		if (i == 0) {
			bytes[0] = RTL8366RB_CIR & 0xff;
			bytes[1] = (RTL8366RB_CIR >> 8) & 0xff;
		} else {
			bytes[0] = RTL8366SR_CIR & 0xff;
			bytes[1] = (RTL8366SR_CIR >> 8) & 0xff;
		}
		err = FUNC10(iicbus, bytes, 2, &xferd, RTL_IICBUS_TIMEOUT);
		if (err != 0)
			goto out;
		err = FUNC4(iicbus, bytes, 2, &xferd, IIC_LAST_READ, 0);
		if (err != 0)
			goto out;
		chipid = ((bytes[1] & 0xff) << 8) | (bytes[0] & 0xff);
		if (i == 0 && chipid == RTL8366RB_CIR_ID8366RB) {
			FUNC0(dev, "chip id 0x%04x\n", chipid);
			sc->chip_type = RTL8366RB;
			err = 0;
			break;
		}
		if (i == 1 && chipid == RTL8366SR_CIR_ID8366SR) {
			FUNC0(dev, "chip id 0x%04x\n", chipid);
			sc->chip_type = RTL8366SR;
			err = 0;
			break;
		}
		if (i == 0) {
			FUNC9(iicbus);
			FUNC5(iicbus, dev);
		}
	}
	if (i == 2)
		err = ENXIO;
out:
	FUNC9(iicbus);
	FUNC5(iicbus, dev);
	return (err == 0 ? 0 : ENXIO);
}