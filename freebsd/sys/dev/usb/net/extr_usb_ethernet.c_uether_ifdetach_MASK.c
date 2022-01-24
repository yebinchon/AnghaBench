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
struct usb_ether {int /*<<< orphan*/  ue_tq; int /*<<< orphan*/  ue_unit; int /*<<< orphan*/  ue_rxq; int /*<<< orphan*/  ue_sysctl_ctx; int /*<<< orphan*/ * ue_miibus; int /*<<< orphan*/  ue_dev; int /*<<< orphan*/  ue_watchdog; struct ifnet* ue_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ueunit ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(struct usb_ether *ue)
{
	struct ifnet *ifp;

	/* wait for any post attach or other command to complete */
	FUNC11(&ue->ue_tq);

	/* read "ifnet" pointer after taskqueue drain */
	ifp = ue->ue_ifp;

	if (ifp != NULL) {

		/* we are not running any more */
		FUNC0(ue);
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC1(ue);

		/* drain any callouts */
		FUNC10(&ue->ue_watchdog);

		/* detach miibus */
		if (ue->ue_miibus != NULL) {
			FUNC7(&Giant);	/* device_xxx() depends on this */
			FUNC2(ue->ue_dev, ue->ue_miibus);
			FUNC8(&Giant);
		}

		/* detach ethernet */
		FUNC3(ifp);

		/* free interface instance */
		FUNC5(ifp);

		/* free sysctl */
		FUNC9(&ue->ue_sysctl_ctx);

		/* drain mbuf queue */
		FUNC6(&ue->ue_rxq);

		/* free unit */
		FUNC4(ueunit, ue->ue_unit);
	}

	/* free taskqueue, if any */
	FUNC12(&ue->ue_tq);
}