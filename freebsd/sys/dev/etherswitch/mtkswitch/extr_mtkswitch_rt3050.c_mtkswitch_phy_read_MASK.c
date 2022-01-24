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
 int /*<<< orphan*/  MTKSWITCH_PCR1 ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int) ; 
 int PCR0_ACTIVE ; 
 int FUNC5 (int) ; 
 int PCR0_READ ; 
 int FUNC6 (int) ; 
 int PCR1_DATA_MASK ; 
 int PCR1_DATA_OFF ; 
 struct mtkswitch_softc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, int phy, int reg)
{
	struct mtkswitch_softc *sc = FUNC7(dev);
	int val;

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);
	while (FUNC2(sc, MTKSWITCH_PCR0) & PCR0_ACTIVE);
	FUNC4(sc, MTKSWITCH_PCR0, PCR0_READ | FUNC6(reg) |
	    FUNC5(phy));
	while (FUNC2(sc, MTKSWITCH_PCR0) & PCR0_ACTIVE);
	val = (FUNC2(sc, MTKSWITCH_PCR1) >> PCR1_DATA_OFF) &
	    PCR1_DATA_MASK;
	FUNC3(sc);
	return (val);
}