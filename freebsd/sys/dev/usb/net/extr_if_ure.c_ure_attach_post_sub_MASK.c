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
struct usb_ether {TYPE_1__* ue_methods; int /*<<< orphan*/  ue_miibus; int /*<<< orphan*/  ue_dev; struct ifnet* ue_ifp; } ;
struct ure_softc {int /*<<< orphan*/  sc_phyno; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_2__ if_snd; int /*<<< orphan*/  if_init; int /*<<< orphan*/  if_ioctl; int /*<<< orphan*/  if_start; } ;
struct TYPE_4__ {int /*<<< orphan*/  ue_mii_sts; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMSR_DEFCAPMASK ; 
 int /*<<< orphan*/  Giant ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  MII_OFFSET_ANY ; 
 int /*<<< orphan*/  ifqmaxlen ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ure_softc* FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  uether_ifmedia_upd ; 
 int /*<<< orphan*/  uether_init ; 
 int /*<<< orphan*/  uether_start ; 
 int /*<<< orphan*/  ure_ioctl ; 

__attribute__((used)) static int
FUNC6(struct usb_ether *ue)
{
	struct ure_softc *sc;
	struct ifnet *ifp;
	int error;

	sc = FUNC5(ue);
	ifp = ue->ue_ifp;
	ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
	ifp->if_start = uether_start;
	ifp->if_ioctl = ure_ioctl;
	ifp->if_init = uether_init;
	FUNC0(&ifp->if_snd, ifqmaxlen);
	ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
	FUNC1(&ifp->if_snd);

	FUNC3(&Giant);
	error = FUNC2(ue->ue_dev, &ue->ue_miibus, ifp,
	    uether_ifmedia_upd, ue->ue_methods->ue_mii_sts,
	    BMSR_DEFCAPMASK, sc->sc_phyno, MII_OFFSET_ANY, 0);
	FUNC4(&Giant);

	return (error);
}