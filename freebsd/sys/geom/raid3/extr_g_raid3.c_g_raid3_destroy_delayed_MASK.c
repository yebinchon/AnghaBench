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
struct g_raid3_softc {int sc_flags; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_name; } ;

/* Variables and functions */
 int EV_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  G_RAID3_DESTROY_SOFT ; 
 int G_RAID3_DEVICE_FLAG_DESTROY ; 
 int G_RAID3_DEVICE_FLAG_DESTROYING ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct g_raid3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *arg, int flag)
{
	struct g_raid3_softc *sc;
	int error;

	if (flag == EV_CANCEL) {
		FUNC0(1, "Destroying canceled.");
		return;
	}
	sc = arg;
	FUNC4();
	FUNC5(&sc->sc_lock);
	FUNC1((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) == 0,
	    ("DESTROY flag set on %s.", sc->sc_name));
	FUNC1((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROYING) != 0,
	    ("DESTROYING flag not set on %s.", sc->sc_name));
	FUNC0(0, "Destroying %s (delayed).", sc->sc_name);
	error = FUNC2(sc, G_RAID3_DESTROY_SOFT);
	if (error != 0) {
		FUNC0(0, "Cannot destroy %s.", sc->sc_name);
		FUNC6(&sc->sc_lock);
	}
	FUNC3();
}