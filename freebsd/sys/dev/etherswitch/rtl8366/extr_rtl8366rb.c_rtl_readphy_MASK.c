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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int EBUSY ; 
 int ENXIO ; 
 int RTL8366_NUM_PHYS ; 
 int RTL8366_NUM_PHY_REG ; 
 int /*<<< orphan*/  RTL8366_PACR ; 
 int /*<<< orphan*/  RTL8366_PACR_READ ; 
 int /*<<< orphan*/  RTL8366_PADR ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int RTL_IICBUS_RETRIES ; 
 int /*<<< orphan*/  RTL_IICBUS_RETRY_SLEEP ; 
 int RTL_WAITOK ; 
 struct rtl8366rb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_access_retries ; 
 int FUNC6 (struct rtl8366rb_softc*,int) ; 
 int FUNC7 (struct rtl8366rb_softc*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8366rb_softc*,int) ; 
 int FUNC9 (struct rtl8366rb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, int phy, int reg)
{
	struct rtl8366rb_softc *sc;
	uint16_t data;
	int err, i, sleep;

	sc = FUNC4(dev);

	data = 0;

	if (phy < 0 || phy >= RTL8366_NUM_PHYS)
		return (ENXIO);
	if (reg < 0 || reg >= RTL8366_NUM_PHY_REG)
		return (ENXIO);
	sleep = RTL_WAITOK;
	err = FUNC6(sc, sleep);
	if (err != 0)
		return (EBUSY);
	for (i = RTL_IICBUS_RETRIES; i--; ) {
		err = FUNC9(sc, RTL8366_PACR, RTL8366_PACR_READ, sleep);
		if (err == 0)
			err = FUNC9(sc, FUNC3(phy, 0, reg), 0, sleep);
		if (err == 0) {
			err = FUNC7(sc, RTL8366_PADR, &data, sleep);
			break;
		}
		FUNC0(phy_access_retries);
		FUNC2(dev, "rtl_readphy(): chip not responsive, retrying %d more times\n", i);
		FUNC5("rtl_readphy", RTL_IICBUS_RETRY_SLEEP);
	}
	FUNC8(sc, sleep);
	FUNC1(dev, err, "rtl_readphy()=%d: phy=%d.%02x\n", phy, reg);
	return (data);
}