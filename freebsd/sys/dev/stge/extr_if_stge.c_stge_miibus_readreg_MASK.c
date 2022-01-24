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
struct stge_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct stge_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*) ; 
 int STGE_PhyCtrl ; 
 struct stge_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stge_mii_bitbang_ops ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct stge_softc *sc;
	int error, val;

	sc = FUNC3(dev);

	if (reg == STGE_PhyCtrl) {
		/* XXX allow ip1000phy read STGE_PhyCtrl register. */
		FUNC1(sc);
		error = FUNC0(sc, STGE_PhyCtrl);
		FUNC2(sc);
		return (error);
	}

	FUNC1(sc);
	val = FUNC4(dev, &stge_mii_bitbang_ops, phy, reg);
	FUNC2(sc);
	return (val);
}