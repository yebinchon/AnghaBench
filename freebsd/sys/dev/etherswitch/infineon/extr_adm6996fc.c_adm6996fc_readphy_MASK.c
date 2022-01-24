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
struct adm6996fc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adm6996fc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct adm6996fc_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ ADM6996FC_PHY_C0 ; 
 int ADM6996FC_PHY_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct adm6996fc_softc*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct adm6996fc_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct adm6996fc_softc	*sc;
	int			 data;

	sc = FUNC5(dev);
	FUNC1(sc, MA_NOTOWNED);

	if (phy < 0 || phy >= 32)
		return (ENXIO);
	if (reg < 0 || reg >= 32)
		return (ENXIO);

	FUNC0(sc);
	data = FUNC2(FUNC4(dev),
	    (ADM6996FC_PHY_C0 + ADM6996FC_PHY_SIZE * phy) + reg);
	FUNC3(sc);

	return (data);
}