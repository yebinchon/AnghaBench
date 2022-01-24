#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  octet; } ;
struct tuntap_softc {int tun_flags; int /*<<< orphan*/  tun_pid; TYPE_1__ tun_ether; } ;
struct thread {TYPE_2__* td_proc; } ;
struct ifnet {int /*<<< orphan*/  if_flags; int /*<<< orphan*/  if_drv_flags; } ;
struct cdev {struct tuntap_softc* si_drv1; int /*<<< orphan*/  si_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 struct ifnet* FUNC5 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,char*) ; 
 int TUN_DYING ; 
 int TUN_INITED ; 
 int TUN_L2 ; 
 int /*<<< orphan*/  FUNC7 (struct tuntap_softc*) ; 
 int TUN_OPEN ; 
 int /*<<< orphan*/  FUNC8 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tuntap_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ) ; 
 scalar_t__ tapuponopen ; 
 int FUNC12 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  tundtor ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC14(struct cdev *dev, int flag, int mode, struct thread *td)
{
	struct ifnet	*ifp;
	struct tuntap_softc *tp;
	int error, tunflags;

	tunflags = 0;
	FUNC1(FUNC4(td));
	error = FUNC13(dev->si_name, NULL, &tunflags);
	if (error != 0) {
		FUNC0();
		return (error);	/* Shouldn't happen */
	}

	tp = dev->si_drv1;
	FUNC3(tp != NULL,
	    ("si_drv1 should have been initialized at creation"));

	FUNC7(tp);
	if ((tp->tun_flags & TUN_INITED) == 0) {
		FUNC8(tp);
		FUNC0();
		return (ENXIO);
	}
	if ((tp->tun_flags & (TUN_OPEN | TUN_DYING)) != 0) {
		FUNC8(tp);
		FUNC0();
		return (EBUSY);
	}

	error = FUNC12(tp);
	FUNC3(error == 0, ("Must be able to busy an unopen tunnel"));
	ifp = FUNC5(tp);

	if ((tp->tun_flags & TUN_L2) != 0) {
		FUNC9(FUNC2(ifp), tp->tun_ether.octet,
		    sizeof(tp->tun_ether.octet));

		ifp->if_drv_flags |= IFF_DRV_RUNNING;
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

		if (tapuponopen)
			ifp->if_flags |= IFF_UP;
	}

	tp->tun_pid = td->td_proc->p_pid;
	tp->tun_flags |= TUN_OPEN;

	FUNC11(ifp, LINK_STATE_UP);
	FUNC6(ifp, "open\n");
	FUNC8(tp);

	/*
	 * This can fail with either ENOENT or EBUSY.  This is in the middle of
	 * d_open, so ENOENT should not be possible.  EBUSY is possible, but
	 * the only cdevpriv dtor being set will be tundtor and the softc being
	 * passed is constant for a given cdev.  We ignore the possible error
	 * because of this as either "unlikely" or "not actually a problem."
	 */
	(void)FUNC10(tp, tundtor);
	FUNC0();
	return (0);
}