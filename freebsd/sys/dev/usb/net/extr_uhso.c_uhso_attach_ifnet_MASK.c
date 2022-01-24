#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct uhso_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_c; struct ifnet* sc_ifp; int /*<<< orphan*/  sc_if_xfer; int /*<<< orphan*/  sc_udev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_xname; TYPE_2__ if_snd; struct uhso_softc* if_softc; int /*<<< orphan*/  if_output; int /*<<< orphan*/  if_start; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_mtu; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  DLT_RAW ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  IFT_OTHER ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UHSO_IFNET_MAX ; 
 int /*<<< orphan*/  UHSO_MAX_MTU ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct uhso_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC10 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 struct ifnet* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uhso_if_init ; 
 int /*<<< orphan*/  uhso_if_ioctl ; 
 int /*<<< orphan*/  uhso_if_output ; 
 int /*<<< orphan*/  uhso_if_rxflush ; 
 int /*<<< orphan*/  uhso_if_start ; 
 int /*<<< orphan*/  uhso_ifnet_config ; 
 int /*<<< orphan*/  uhso_ifnet_unit ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uhso_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(struct uhso_softc *sc, struct usb_interface *iface, int type)
{
	struct ifnet *ifp;
	usb_error_t uerr;
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid *soid;
	unsigned int devunit;

	uerr = FUNC19(sc->sc_udev,
	    &iface->idesc->bInterfaceNumber, sc->sc_if_xfer,
	    uhso_ifnet_config, UHSO_IFNET_MAX, sc, &sc->sc_mtx);
	if (uerr) {
		FUNC4(0, "usbd_transfer_setup failed: %s\n",
		    FUNC18(uerr));
		return (-1);
	}

	sc->sc_ifp = ifp = FUNC13(IFT_OTHER);
	if (sc->sc_ifp == NULL) {
		FUNC12(sc->sc_dev, "if_alloc() failed\n");
		return (-1);
	}

	FUNC7(&sc->sc_c, &sc->sc_mtx, 0);
	FUNC16(&sc->sc_mtx);
	FUNC8(&sc->sc_c, 1, uhso_if_rxflush, sc);
	FUNC17(&sc->sc_mtx);

	/*
	 * We create our own unit numbers for ifnet devices because the
	 * USB interface unit numbers can be at arbitrary positions yielding
	 * odd looking device names.
	 */
	devunit = FUNC5(uhso_ifnet_unit);

	FUNC15(ifp, FUNC9(sc->sc_dev), devunit);
	ifp->if_mtu = UHSO_MAX_MTU;
	ifp->if_ioctl = uhso_if_ioctl;
	ifp->if_init = uhso_if_init;
	ifp->if_start = uhso_if_start;
	ifp->if_output = uhso_if_output;
	ifp->if_flags = IFF_BROADCAST | IFF_MULTICAST | IFF_NOARP;
	ifp->if_softc = sc;
	FUNC0(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
	FUNC1(&ifp->if_snd);

	FUNC14(ifp);
	FUNC6(ifp, DLT_RAW, 0);

	sctx = FUNC10(sc->sc_dev);
	soid = FUNC11(sc->sc_dev);
	/* Unlocked read... */
	FUNC2(sctx, FUNC3(soid), OID_AUTO, "netif",
	    CTLFLAG_RD, ifp->if_xname, 0, "Attached network interface");

	return (0);
}