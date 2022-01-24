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
struct vge_softc {scalar_t__ vge_camidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,scalar_t__,int) ; 
 scalar_t__ VGE_CAM0 ; 
 scalar_t__ VGE_CAMADDR ; 
 int VGE_CAMADDR_AVSEL ; 
 int VGE_CAMADDR_ENABLE ; 
 int /*<<< orphan*/  VGE_CAMCTL ; 
 int /*<<< orphan*/  VGE_CAMCTL_PAGESEL ; 
 int /*<<< orphan*/  VGE_PAGESEL_CAMMASK ; 
 int /*<<< orphan*/  VGE_PAGESEL_MAR ; 

__attribute__((used)) static void
FUNC3(struct vge_softc *sc)
{
	int i;

	/*
	 * Turn off all the mask bits. This tells the chip
	 * that none of the entries in the CAM filter are valid.
	 * desired entries will be enabled as we fill the filter in.
	 */

	FUNC0(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
	FUNC1(sc, VGE_CAMCTL, VGE_PAGESEL_CAMMASK);
	FUNC2(sc, VGE_CAMADDR, VGE_CAMADDR_ENABLE);
	for (i = 0; i < 8; i++)
		FUNC2(sc, VGE_CAM0 + i, 0);

	/* Clear the VLAN filter too. */

	FUNC2(sc, VGE_CAMADDR, VGE_CAMADDR_ENABLE|VGE_CAMADDR_AVSEL|0);
	for (i = 0; i < 8; i++)
		FUNC2(sc, VGE_CAM0 + i, 0);

	FUNC2(sc, VGE_CAMADDR, 0);
	FUNC0(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
	FUNC1(sc, VGE_CAMCTL, VGE_PAGESEL_MAR);

	sc->vge_camidx = 0;
}