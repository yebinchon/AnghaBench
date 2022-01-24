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
struct rtl8366rb_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_LAST_READ ; 
 int /*<<< orphan*/  RTL_IICBUS_READ ; 
 int /*<<< orphan*/  RTL_IICBUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366rb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct rtl8366rb_softc *sc, uint16_t addr, uint16_t *data, int sleep)
{
	int err;
	device_t iicbus;
	char bytes[2];
	int xferd;

	iicbus = FUNC1(sc->dev);

	FUNC0(sc);
	bytes[0] = addr & 0xff;
	bytes[1] = (addr >> 8) & 0xff;
	err = FUNC5(sc->dev, RTL_IICBUS_READ, sleep);
	if (err != 0)
		goto out;
	err = FUNC4(iicbus, bytes, 2, &xferd, RTL_IICBUS_TIMEOUT);
	if (err != 0)
		goto out;
	err = FUNC2(iicbus, bytes, 2, &xferd, IIC_LAST_READ, 0);
	if (err != 0)
		goto out;
	*data = ((bytes[1] & 0xff) << 8) | (bytes[0] & 0xff);

out:
	FUNC3(iicbus);
	return (err);
}