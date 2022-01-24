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
struct mtkswitch_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtkswitch_softc*) ; 
 struct mtkswitch_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mtkswitch_softc*,int,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int val)
{
	struct mtkswitch_softc *sc = FUNC3(dev);
	int res;

	if ((phy < 0 || phy >= 32) || (reg < 0 || reg >= 32))
		return (ENXIO);

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);
	res = FUNC4(sc, phy, reg, val);
	FUNC2(sc);

	return (res);
}