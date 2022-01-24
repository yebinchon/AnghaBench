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
struct mtkswitch_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MTKSWITCH_HI16_MSK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  MTKSWITCH_LO16_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtkswitch_softc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int reg, int val)
{
	struct mtkswitch_softc *sc = FUNC7(dev);
	uint32_t tmp;

	FUNC1(sc, MA_OWNED);
	tmp = FUNC2(sc, FUNC3(reg));
	if (FUNC0(reg)) {
		tmp &= MTKSWITCH_LO16_MSK;
		tmp |= FUNC4(val);
	} else {
		tmp &= MTKSWITCH_HI16_MSK;
		tmp |= FUNC5(val);
	}
	FUNC6(sc, FUNC3(reg), tmp);

	return (0);
}