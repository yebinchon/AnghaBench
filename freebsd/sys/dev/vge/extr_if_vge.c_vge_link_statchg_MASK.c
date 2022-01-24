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
struct vge_softc {struct ifnet* vge_ifp; int /*<<< orphan*/  vge_flags; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int VGE_CR2_FDX_RXFLOWCTL_ENABLE ; 
 int VGE_CR2_FDX_TXFLOWCTL_ENABLE ; 
 int /*<<< orphan*/  VGE_CRC2 ; 
 int /*<<< orphan*/  VGE_CRS2 ; 
 int /*<<< orphan*/  VGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*) ; 
 int /*<<< orphan*/  VGE_PHYSTS0 ; 
 int VGE_PHYSTS_FDX ; 
 int VGE_PHYSTS_LINK ; 
 int VGE_PHYSTS_RESETSTS ; 
 int VGE_PHYSTS_RXFLOWCAP ; 
 int VGE_PHYSTS_TXFLOWCAP ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct vge_softc *sc;
	struct ifnet *ifp;
	uint8_t physts;

	sc = xsc;
	ifp = sc->vge_ifp;
	FUNC3(sc);

	physts = FUNC0(sc, VGE_PHYSTS0);
	if ((physts & VGE_PHYSTS_RESETSTS) == 0) {
		if ((physts & VGE_PHYSTS_LINK) == 0) {
			sc->vge_flags &= ~VGE_FLAG_LINK;
			FUNC4(sc->vge_ifp,
			    LINK_STATE_DOWN);
		} else {
			sc->vge_flags |= VGE_FLAG_LINK;
			FUNC4(sc->vge_ifp,
			    LINK_STATE_UP);
			FUNC1(sc, VGE_CRC2, VGE_CR2_FDX_TXFLOWCTL_ENABLE |
			    VGE_CR2_FDX_RXFLOWCTL_ENABLE);
			if ((physts & VGE_PHYSTS_FDX) != 0) {
				if ((physts & VGE_PHYSTS_TXFLOWCAP) != 0)
					FUNC1(sc, VGE_CRS2,
					    VGE_CR2_FDX_TXFLOWCTL_ENABLE);
				if ((physts & VGE_PHYSTS_RXFLOWCAP) != 0)
					FUNC1(sc, VGE_CRS2,
					    VGE_CR2_FDX_RXFLOWCTL_ENABLE);
			}
			if (!FUNC2(&ifp->if_snd))
				FUNC6(ifp);
		}
	}
	/*
	 * Restart MII auto-polling because link state change interrupt
	 * will disable it.
	 */
	FUNC5(sc);
}