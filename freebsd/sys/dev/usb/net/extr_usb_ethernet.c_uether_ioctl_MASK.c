#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct usb_ether {int /*<<< orphan*/ * ue_miibus; TYPE_3__* ue_multi_task; TYPE_2__* ue_sync_task; TYPE_1__* ue_promisc_task; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct usb_ether* if_softc; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ue_promisc_task ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ue_setmulti_task ; 
 int /*<<< orphan*/  ue_start_task ; 
 int /*<<< orphan*/  ue_stop_task ; 

int
FUNC6(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct usb_ether *ue = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *)data;
	struct mii_data *mii;
	int error = 0;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(ue);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC5(ue, ue_promisc_task,
				    &ue->ue_promisc_task[0].hdr, 
				    &ue->ue_promisc_task[1].hdr);
			else
				FUNC5(ue, ue_start_task,
				    &ue->ue_sync_task[0].hdr, 
				    &ue->ue_sync_task[1].hdr);
		} else {
			FUNC5(ue, ue_stop_task,
			    &ue->ue_sync_task[0].hdr, 
			    &ue->ue_sync_task[1].hdr);
		}
		FUNC1(ue);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(ue);
		FUNC5(ue, ue_setmulti_task,
		    &ue->ue_multi_task[0].hdr, 
		    &ue->ue_multi_task[1].hdr);
		FUNC1(ue);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		if (ue->ue_miibus != NULL) {
			mii = FUNC2(ue->ue_miibus);
			error = FUNC4(ifp, ifr, &mii->mii_media, command);
		} else
			error = FUNC3(ifp, command, data);
		break;
	default:
		error = FUNC3(ifp, command, data);
		break;
	}
	return (error);
}