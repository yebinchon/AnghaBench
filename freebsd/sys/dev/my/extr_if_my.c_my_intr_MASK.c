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
typedef  int u_int32_t ;
struct my_softc {struct ifnet* my_ifp; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct my_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int MY_ETI ; 
 int MY_FBE ; 
 int /*<<< orphan*/  MY_IMR ; 
 int MY_INTRS ; 
 int /*<<< orphan*/  MY_ISR ; 
 int /*<<< orphan*/  FUNC3 (struct my_softc*) ; 
 int MY_RBU ; 
 int MY_RI ; 
 int MY_RxErr ; 
 int MY_TBU ; 
 int MY_TI ; 
 int /*<<< orphan*/  FUNC4 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct my_softc*) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct my_softc *sc;
	struct ifnet   *ifp;
	u_int32_t       status;

	sc = arg;
	FUNC3(sc);
	ifp = sc->my_ifp;
	if (!(ifp->if_flags & IFF_UP)) {
		FUNC4(sc);
		return;
	}
	/* Disable interrupts. */
	FUNC1(sc, MY_IMR, 0x00000000);

	for (;;) {
		status = FUNC0(sc, MY_ISR);
		status &= MY_INTRS;
		if (status)
			FUNC1(sc, MY_ISR, status);
		else
			break;

		if (status & MY_RI)	/* receive interrupt */
			FUNC8(sc);

		if ((status & MY_RBU) || (status & MY_RxErr)) {
			/* rx buffer unavailable or rx error */
			FUNC5(ifp, IFCOUNTER_IERRORS, 1);
#ifdef foo
			my_stop(sc);
			my_reset(sc);
			my_init_locked(sc);
#endif
		}
		if (status & MY_TI)	/* tx interrupt */
			FUNC12(sc);
		if (status & MY_ETI)	/* tx early interrupt */
			FUNC12(sc);
		if (status & MY_TBU)	/* tx buffer unavailable */
			FUNC11(sc);

#if 0				/* 90/1/18 delete */
		if (status & MY_FBE) {
			my_reset(sc);
			my_init_locked(sc);
		}
#endif

	}

	/* Re-enable interrupts. */
	FUNC1(sc, MY_IMR, MY_INTRS);
	if (!FUNC2(&ifp->if_snd))
		FUNC9(ifp);
	FUNC4(sc);
	return;
}