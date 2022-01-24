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
struct ifaddr {int dummy; } ;
struct carp_softc {int sc_ifasiz; struct ifaddr** sc_ifas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct carp_softc*) ; 
 int /*<<< orphan*/  M_CARP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr**,struct ifaddr**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr**,int /*<<< orphan*/ ) ; 
 struct ifaddr** FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct carp_softc *sc)
{
	struct ifaddr **new;

	new = FUNC4(sc->sc_ifasiz * 2, M_CARP, M_WAITOK | M_ZERO);
	FUNC0(sc);
	FUNC2(sc->sc_ifas, new, sc->sc_ifasiz);
	FUNC3(sc->sc_ifas, M_CARP);
	sc->sc_ifas = new;
	sc->sc_ifasiz *= 2;
	FUNC1(sc);
}