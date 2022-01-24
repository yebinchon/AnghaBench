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
typedef  int uint16_t ;
struct vge_softc {int /*<<< orphan*/  vge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  VGE_MIIADDR ; 
 int /*<<< orphan*/  VGE_MIICMD ; 
 int VGE_MIICMD_RCMD ; 
 int /*<<< orphan*/  VGE_MIIDATA ; 
 int VGE_TIMEOUT ; 
 struct vge_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vge_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, int phy, int reg)
{
	struct vge_softc *sc;
	int i;
	uint16_t rval = 0;

	sc = FUNC5(dev);

	FUNC8(sc);

	/* Specify the register we want to read. */
	FUNC3(sc, VGE_MIIADDR, reg);

	/* Issue read command. */
	FUNC2(sc, VGE_MIICMD, VGE_MIICMD_RCMD);

	/* Wait for the read command bit to self-clear. */
	for (i = 0; i < VGE_TIMEOUT; i++) {
		FUNC4(1);
		if ((FUNC0(sc, VGE_MIICMD) & VGE_MIICMD_RCMD) == 0)
			break;
	}

	if (i == VGE_TIMEOUT)
		FUNC6(sc->vge_dev, "MII read timed out\n");
	else
		rval = FUNC1(sc, VGE_MIIDATA);

	FUNC7(sc);

	return (rval);
}