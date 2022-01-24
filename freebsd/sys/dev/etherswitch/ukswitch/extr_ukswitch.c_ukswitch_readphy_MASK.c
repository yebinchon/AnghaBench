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
struct ukswitch_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ukswitch_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ukswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ukswitch_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ukswitch_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct ukswitch_softc *sc;
	int data;

	sc = FUNC5(dev);
	FUNC2(sc, MA_NOTOWNED);

	if (phy < 0 || phy >= 32)
		return (ENXIO);
	if (reg < 0 || reg >= 32)
		return (ENXIO);

	FUNC1(sc);
	data = FUNC0(FUNC4(dev), phy, reg);
	FUNC3(sc);

	return (data);
}