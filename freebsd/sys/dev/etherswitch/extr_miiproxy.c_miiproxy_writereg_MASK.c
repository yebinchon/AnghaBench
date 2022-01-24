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
struct miiproxy_softc {int /*<<< orphan*/ * mdio; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int) ; 
 struct miiproxy_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, int phy, int reg, int val)
{
	struct miiproxy_softc *sc = FUNC1(dev);

	if (sc->mdio != NULL)
		return (FUNC0(sc->mdio, phy, reg, val));
	return (-1);
}