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
struct carp_softc {int sc_state; TYPE_1__* sc_carpdev; int /*<<< orphan*/  sc_vhid; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
#define  BACKUP 130 
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
#define  INIT 129 
#define  MASTER 128 
 int /*<<< orphan*/  FUNC1 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct carp_softc*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct carp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(struct carp_softc *sc, const char *reason)
{

	FUNC0(sc);

	switch (sc->sc_state) {
	case BACKUP:
		FUNC5(sc, MASTER, reason);
		FUNC2(sc);
#ifdef INET
		carp_send_arp(sc);
#endif
#ifdef INET6
		carp_send_na(sc);
#endif
		FUNC6(sc, 0);
		FUNC1(sc);
		break;
	case INIT:
	case MASTER:
#ifdef INVARIANTS
		panic("carp: VHID %u@%s: master_down event in %s state\n",
		    sc->sc_vhid,
		    sc->sc_carpdev->if_xname,
		    sc->sc_state ? "MASTER" : "INIT");
#endif
		break;
	}
}