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
struct vr_softc {int /*<<< orphan*/  vr_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct vr_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  VR_MIIADDR ; 
 int /*<<< orphan*/  VR_MIICMD ; 
 int VR_MIICMD_READ_ENB ; 
 int /*<<< orphan*/  VR_MIIDATA ; 
 int VR_MII_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (struct vr_softc*,int /*<<< orphan*/ ,int) ; 
 struct vr_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, int phy, int reg)
{
	struct vr_softc		*sc;
	int			i;

	sc = FUNC5(dev);

	/* Set the register address. */
	FUNC2(sc, VR_MIIADDR, reg);
	FUNC4(sc, VR_MIICMD, VR_MIICMD_READ_ENB);

	for (i = 0; i < VR_MII_TIMEOUT; i++) {
		FUNC3(1);
		if ((FUNC0(sc, VR_MIICMD) & VR_MIICMD_READ_ENB) == 0)
			break;
	}
	if (i == VR_MII_TIMEOUT)
		FUNC6(sc->vr_dev, "phy read timeout %d:%d\n", phy, reg);

	return (FUNC1(sc, VR_MIIDATA));
}