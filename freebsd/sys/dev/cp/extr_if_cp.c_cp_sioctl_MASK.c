#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct ifnet {int if_drv_flags; int if_flags; TYPE_3__* if_softc; } ;
struct TYPE_11__ {TYPE_2__* chan; TYPE_1__* board; } ;
typedef  TYPE_3__ drv_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_10__ {scalar_t__ debug_shadow; scalar_t__ debug; } ;
struct TYPE_9__ {int /*<<< orphan*/ * sys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int IFF_DEBUG ; 
 int IFF_DRV_RUNNING ; 
#define  SIOCADDMULTI 131 
#define  SIOCDELMULTI 130 
#define  SIOCSIFADDR 129 
#define  SIOCSIFFLAGS 128 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10 (struct ifnet *ifp, u_long cmd, caddr_t data)
{
	drv_t *d = ifp->if_softc;
	bdrv_t *bd = d->board->sys;
	int error, s, was_up, should_be_up;

	was_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
	error = FUNC9 (ifp, cmd, data);

	if (error)
		return error;

	if (! (ifp->if_flags & IFF_DEBUG))
		d->chan->debug = 0;
	else
		d->chan->debug = d->chan->debug_shadow;

	switch (cmd) {
	default:	   FUNC1 (d, ("ioctl 0x%lx\n", cmd));   return 0;
	case SIOCADDMULTI: FUNC1 (d, ("ioctl SIOCADDMULTI\n")); return 0;
	case SIOCDELMULTI: FUNC1 (d, ("ioctl SIOCDELMULTI\n")); return 0;
	case SIOCSIFFLAGS: FUNC1 (d, ("ioctl SIOCSIFFLAGS\n")); break;
	case SIOCSIFADDR:  FUNC1 (d, ("ioctl SIOCSIFADDR\n"));  break;
	}

	/* We get here only in case of SIFFLAGS or SIFADDR. */
	s = FUNC7 ();
	FUNC2 (bd);
	should_be_up = (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0;
	if (! was_up && should_be_up) {
		/* Interface goes up -- start it. */
		FUNC6 (d);
		FUNC5 (d);
	} else if (was_up && ! should_be_up) {
		/* Interface is going down -- stop it. */
/*		if ((IFP2SP(ifp)->pp_flags & PP_FR) || (ifp->if_flags & PP_CISCO))*/
		FUNC4 (d);
	}
	FUNC0 (d, ("ioctl 0x%lx p4\n", cmd));
	FUNC3 (bd);
	FUNC8 (s);
	return 0;
}