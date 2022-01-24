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
struct ip17x_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ip17x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip17x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip17x_softc*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ip17x_softc* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev, int phy, int reg)
{
	struct ip17x_softc *sc;
	int data;

	sc = FUNC5(dev);
	FUNC1(sc, MA_NOTOWNED);

	if (phy < 0 || phy >= 32)
		return (ENXIO);
	if (reg < 0 || reg >= 32)
		return (ENXIO);

	FUNC0(sc);
	data = FUNC3(FUNC4(dev), phy, reg);
	FUNC2(sc);

	return (data);
}