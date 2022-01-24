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
typedef  int uint8_t ;
struct vge_softc {int vge_camidx; int /*<<< orphan*/  vge_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vge_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int EIO ; 
 int ENOSPC ; 
 int ETHER_ADDR_LEN ; 
 scalar_t__ VGE_CAM0 ; 
 scalar_t__ VGE_CAMADDR ; 
 int VGE_CAMADDR_ENABLE ; 
 scalar_t__ VGE_CAMCTL ; 
 int /*<<< orphan*/  VGE_CAMCTL_PAGESEL ; 
 int VGE_CAMCTL_WRITE ; 
 int VGE_CAM_MAXADDRS ; 
 int VGE_PAGESEL_CAMDATA ; 
 int VGE_PAGESEL_CAMMASK ; 
 int VGE_PAGESEL_MAR ; 
 int VGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct vge_softc *sc, uint8_t *addr)
{
	int i, error = 0;

	if (sc->vge_camidx == VGE_CAM_MAXADDRS)
		return (ENOSPC);

	/* Select the CAM data page. */
	FUNC0(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
	FUNC2(sc, VGE_CAMCTL, VGE_PAGESEL_CAMDATA);

	/* Set the filter entry we want to update and enable writing. */
	FUNC3(sc, VGE_CAMADDR, VGE_CAMADDR_ENABLE|sc->vge_camidx);

	/* Write the address to the CAM registers */
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		FUNC3(sc, VGE_CAM0 + i, addr[i]);

	/* Issue a write command. */
	FUNC2(sc, VGE_CAMCTL, VGE_CAMCTL_WRITE);

	/* Wake for it to clear. */
	for (i = 0; i < VGE_TIMEOUT; i++) {
		FUNC4(1);
		if ((FUNC1(sc, VGE_CAMCTL) & VGE_CAMCTL_WRITE) == 0)
			break;
	}

	if (i == VGE_TIMEOUT) {
		FUNC5(sc->vge_dev, "setting CAM filter failed\n");
		error = EIO;
		goto fail;
	}

	/* Select the CAM mask page. */
	FUNC0(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
	FUNC2(sc, VGE_CAMCTL, VGE_PAGESEL_CAMMASK);

	/* Set the mask bit that enables this filter. */
	FUNC2(sc, VGE_CAM0 + (sc->vge_camidx/8),
	    1<<(sc->vge_camidx & 7));

	sc->vge_camidx++;

fail:
	/* Turn off access to CAM. */
	FUNC3(sc, VGE_CAMADDR, 0);
	FUNC0(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
	FUNC2(sc, VGE_CAMCTL, VGE_PAGESEL_MAR);

	return (error);
}