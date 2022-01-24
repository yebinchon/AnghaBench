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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct tuntap_softc {int tun_flags; TYPE_1__ tun_rsel; int /*<<< orphan*/ * tun_sigio; } ;
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_snd; struct tuntap_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,char*,...) ; 
 int TUN_ASYNC ; 
 int /*<<< orphan*/  FUNC4 (struct tuntap_softc*) ; 
 int TUN_READY ; 
 int TUN_RWAIT ; 
 int /*<<< orphan*/  FUNC5 (struct tuntap_softc*) ; 
 int TUN_VMNET ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tuntap_softc*) ; 

__attribute__((used)) static void
FUNC11(struct ifnet *ifp)
{
	struct tuntap_softc	*tp = ifp->if_softc;

	FUNC3(ifp, "starting\n");

	/*
	 * do not junk pending output if we are in VMnet mode.
	 * XXX: can this do any harm because of queue overflow?
	 */

	FUNC4(tp);
	if (((tp->tun_flags & TUN_VMNET) == 0) &&
	    ((tp->tun_flags & TUN_READY) != TUN_READY)) {
		struct mbuf *m;

		/* Unlocked read. */
		FUNC3(ifp, "not ready, tun_flags = 0x%x\n", tp->tun_flags);

		for (;;) {
			FUNC1(&ifp->if_snd, m);
			if (m != NULL) {
				FUNC7(m);
				FUNC6(ifp, IFCOUNTER_OERRORS, 1);
			} else
				break;
		}
		FUNC5(tp);

		return;
	}

	ifp->if_drv_flags |= IFF_DRV_OACTIVE;

	if (!FUNC0(&ifp->if_snd)) {
		if (tp->tun_flags & TUN_RWAIT) {
			tp->tun_flags &= ~TUN_RWAIT;
			FUNC10(tp);
		}

		if ((tp->tun_flags & TUN_ASYNC) && (tp->tun_sigio != NULL)) {
			FUNC5(tp);
			FUNC8(&tp->tun_sigio, SIGIO, 0);
			FUNC4(tp);
		}

		FUNC9(&tp->tun_rsel, PZERO+1);
		FUNC2(&tp->tun_rsel.si_note, 0);
		FUNC6(ifp, IFCOUNTER_OPACKETS, 1); /* obytes are counted in ether_output */
	}

	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC5(tp);
}