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
typedef  int uint16_t ;
struct rtl8366rb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int EBUSY ; 
 int EIO ; 
 struct rtl8366rb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8366rb_softc*,int) ; 
 int FUNC3 (struct rtl8366rb_softc*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8366rb_softc*,int) ; 
 int FUNC5 (struct rtl8366rb_softc*,int,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint16_t addr, uint16_t mask, uint16_t data, int sleep)
{
	struct rtl8366rb_softc *sc;
	int err;
	uint16_t oldv, newv;
	
	sc = FUNC1(dev);

	err = FUNC2(sc, sleep);
	if (err != 0)
		return (EBUSY);
	if (err == 0) {
		err = FUNC3(sc, addr, &oldv, sleep);
		if (err == 0) {
			newv = oldv & ~mask;
			newv |= data & mask;
			if (newv != oldv)
				err = FUNC5(sc, addr, newv, sleep);
		}
	}
	FUNC4(sc, sleep);
	FUNC0(dev, err, "smi_rmw()=%d: addr=%04x\n", addr);
	return (err == 0 ? 0 : EIO);
}