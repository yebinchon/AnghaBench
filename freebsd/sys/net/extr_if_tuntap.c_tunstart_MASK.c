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
struct tuntap_softc {int tun_flags; scalar_t__ tun_sigio; TYPE_1__ tun_rsel; } ;
struct mbuf {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_snd; struct tuntap_softc* if_softc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PZERO ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 
 int TUN_ASYNC ; 
 int /*<<< orphan*/  FUNC6 (struct tuntap_softc*) ; 
 int TUN_RWAIT ; 
 int /*<<< orphan*/  FUNC7 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tuntap_softc*) ; 

__attribute__((used)) static void
FUNC11(struct ifnet *ifp)
{
	struct tuntap_softc *tp = ifp->if_softc;
	struct mbuf *m;

	FUNC5(ifp, "starting\n");
	if (FUNC0(&ifp->if_snd)) {
		FUNC1(&ifp->if_snd);
		FUNC2(&ifp->if_snd, m);
		if (m == NULL) {
			FUNC3(&ifp->if_snd);
			return;
		}
		FUNC3(&ifp->if_snd);
	}

	FUNC6(tp);
	if (tp->tun_flags & TUN_RWAIT) {
		tp->tun_flags &= ~TUN_RWAIT;
		FUNC10(tp);
	}
	FUNC9(&tp->tun_rsel, PZERO + 1);
	FUNC4(&tp->tun_rsel.si_note, 0);
	if (tp->tun_flags & TUN_ASYNC && tp->tun_sigio) {
		FUNC7(tp);
		FUNC8(&tp->tun_sigio, SIGIO, 0);
	} else
		FUNC7(tp);
}