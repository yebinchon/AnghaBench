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
typedef  int /*<<< orphan*/  vxlp ;
struct TYPE_2__ {int /*<<< orphan*/  octet; } ;
struct vxlan_softc {int vxl_unit; TYPE_1__ vxl_hwaddr; int /*<<< orphan*/  vxl_media; int /*<<< orphan*/  vxl_port_hash_key; int /*<<< orphan*/  vxl_lock; int /*<<< orphan*/  vxl_callout; struct ifnet* vxl_ifp; } ;
struct ifvxlanparam {int dummy; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; scalar_t__ if_hdrlen; scalar_t__ if_baudrate; int /*<<< orphan*/  if_qflush; int /*<<< orphan*/  if_transmit; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_init; struct vxlan_softc* if_softc; } ;
struct if_clone {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOSPC ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LINKSTATE ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  M_VXLAN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,struct ifvxlanparam*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_softc*,int /*<<< orphan*/ ) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct vxlan_softc* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  vxlan_init ; 
 int /*<<< orphan*/  vxlan_ioctl ; 
 int /*<<< orphan*/  vxlan_media_change ; 
 int /*<<< orphan*/  vxlan_media_status ; 
 int /*<<< orphan*/  vxlan_name ; 
 int /*<<< orphan*/  vxlan_qflush ; 
 int /*<<< orphan*/  FUNC14 (struct vxlan_softc*) ; 
 int FUNC15 (struct vxlan_softc*,struct ifvxlanparam*) ; 
 int /*<<< orphan*/  FUNC16 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  vxlan_transmit ; 

__attribute__((used)) static int
FUNC17(struct if_clone *ifc, int unit, caddr_t params)
{
	struct vxlan_softc *sc;
	struct ifnet *ifp;
	struct ifvxlanparam vxlp;
	int error;

	sc = FUNC11(sizeof(struct vxlan_softc), M_VXLAN, M_WAITOK | M_ZERO);
	sc->vxl_unit = unit;
	FUNC14(sc);

	if (params != 0) {
		error = FUNC2(params, &vxlp, sizeof(vxlp));
		if (error)
			goto fail;

		error = FUNC15(sc, &vxlp);
		if (error)
			goto fail;
	}

	ifp = FUNC6(IFT_ETHER);
	if (ifp == NULL) {
		error = ENOSPC;
		goto fail;
	}

	sc->vxl_ifp = ifp;
	FUNC12(&sc->vxl_lock, "vxlanrm");
	FUNC1(&sc->vxl_callout, &sc->vxl_lock, 0);
	sc->vxl_port_hash_key = FUNC0();
	FUNC13(sc);

	FUNC16(sc);

	ifp->if_softc = sc;
	FUNC7(ifp, vxlan_name, unit);
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_init = vxlan_init;
	ifp->if_ioctl = vxlan_ioctl;
	ifp->if_transmit = vxlan_transmit;
	ifp->if_qflush = vxlan_qflush;
	ifp->if_capabilities |= IFCAP_LINKSTATE | IFCAP_JUMBO_MTU;
	ifp->if_capenable |= IFCAP_LINKSTATE | IFCAP_JUMBO_MTU;

	FUNC9(&sc->vxl_media, 0, vxlan_media_change, vxlan_media_status);
	FUNC8(&sc->vxl_media, IFM_ETHER | IFM_AUTO, 0, NULL);
	FUNC10(&sc->vxl_media, IFM_ETHER | IFM_AUTO);

	FUNC3(ifp, &sc->vxl_hwaddr);
	FUNC4(ifp, sc->vxl_hwaddr.octet);

	ifp->if_baudrate = 0;
	ifp->if_hdrlen = 0;

	return (0);

fail:
	FUNC5(sc, M_VXLAN);
	return (error);
}