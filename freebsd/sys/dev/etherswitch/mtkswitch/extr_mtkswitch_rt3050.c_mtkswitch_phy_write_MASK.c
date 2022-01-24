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
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_PCR0 ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int PCR0_ACTIVE ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int PCR0_WRITE ; 
 struct mtkswitch_softc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg, int val)
{
	struct mtkswitch_softc *sc = FUNC8(dev);

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);
	while (FUNC2(sc, MTKSWITCH_PCR0) & PCR0_ACTIVE);
	FUNC4(sc, MTKSWITCH_PCR0, PCR0_WRITE | FUNC7(reg) |
	    FUNC6(phy) | FUNC5(val));
	while (FUNC2(sc, MTKSWITCH_PCR0) & PCR0_ACTIVE);
	FUNC3(sc);
	return (0);
}