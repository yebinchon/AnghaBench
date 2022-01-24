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
typedef  int /*<<< orphan*/  uint16_t ;
struct rtl8366rb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EIO ; 
 struct rtl8366rb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtl8366rb_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366rb_softc*,int) ; 
 int FUNC4 (struct rtl8366rb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint16_t addr, uint16_t data, int sleep)
{
	struct rtl8366rb_softc *sc;
	int err;
	
	sc = FUNC1(dev);

	err = FUNC2(sc, sleep);
	if (err != 0)
		return (EBUSY);
	err = FUNC4(sc, addr, data, sleep);
	FUNC3(sc, sleep);
	FUNC0(dev, err, "smi_write()=%d: addr=%04x\n", addr);
	return (err == 0 ? 0 : EIO);
}