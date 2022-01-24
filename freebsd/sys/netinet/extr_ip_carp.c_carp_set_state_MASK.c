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
struct carp_softc {int sc_state; int sc_vhid; TYPE_1__* sc_carpdev; } ;
struct TYPE_2__ {char* if_xname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*,char const*) ; 
 char const* CARP_STATES ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,char*) ; 

__attribute__((used)) static void
FUNC4(struct carp_softc *sc, int state, const char *reason)
{

	FUNC0(sc);

	if (sc->sc_state != state) {
		const char *carp_states[] = { CARP_STATES };
		char subsys[IFNAMSIZ+5];

		FUNC3(subsys, IFNAMSIZ+5, "%u@%s", sc->sc_vhid,
		    sc->sc_carpdev->if_xname);

		FUNC1("%s: %s -> %s (%s)\n", subsys,
		    carp_states[sc->sc_state], carp_states[state], reason);

		sc->sc_state = state;

		FUNC2("CARP", subsys, carp_states[state], NULL);
	}
}