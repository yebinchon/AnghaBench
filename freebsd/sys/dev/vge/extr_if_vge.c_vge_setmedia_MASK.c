#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vge_softc {int /*<<< orphan*/  vge_dev; int /*<<< orphan*/  vge_miibus; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
#define  IFM_AUTO 128 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  VGE_DIAGCTL ; 
 int /*<<< orphan*/  VGE_DIAGCTL_FDXFORCE ; 
 int /*<<< orphan*/  VGE_DIAGCTL_MACFORCE ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct vge_softc *sc)
{
	struct mii_data *mii;
	struct ifmedia_entry *ife;

	mii = FUNC3(sc->vge_miibus);
	ife = mii->mii_media.ifm_cur;

	/*
	 * If the user manually selects a media mode, we need to turn
	 * on the forced MAC mode bit in the DIAGCTL register. If the
	 * user happens to choose a full duplex mode, we also need to
	 * set the 'force full duplex' bit. This applies only to
	 * 10Mbps and 100Mbps speeds. In autoselect mode, forced MAC
	 * mode is disabled, and in 1000baseT mode, full duplex is
	 * always implied, so we turn on the forced mode bit but leave
	 * the FDX bit cleared.
	 */

	switch (FUNC2(ife->ifm_media)) {
	case IFM_AUTO:
		FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);
		FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
		break;
	case IFM_1000_T:
		FUNC1(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);
		FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
		break;
	case IFM_100_TX:
	case IFM_10_T:
		FUNC1(sc, VGE_DIAGCTL, VGE_DIAGCTL_MACFORCE);
		if ((ife->ifm_media & IFM_GMASK) == IFM_FDX) {
			FUNC1(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
		} else {
			FUNC0(sc, VGE_DIAGCTL, VGE_DIAGCTL_FDXFORCE);
		}
		break;
	default:
		FUNC4(sc->vge_dev, "unknown media type: %x\n",
		    FUNC2(ife->ifm_media));
		break;
	}
}