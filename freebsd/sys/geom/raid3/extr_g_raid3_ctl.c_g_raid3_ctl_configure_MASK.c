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
typedef  size_t u_int ;
struct gctl_req {int dummy; } ;
struct g_raid3_softc {scalar_t__ sc_ndisks; int sc_flags; int /*<<< orphan*/  sc_lock; struct g_raid3_disk* sc_disks; } ;
struct g_raid3_disk {scalar_t__ d_state; int /*<<< orphan*/  d_flags; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int G_RAID3_DEVICE_FLAG_NOAUTOSYNC ; 
 int G_RAID3_DEVICE_FLAG_NOFAILSYNC ; 
 int G_RAID3_DEVICE_FLAG_ROUND_ROBIN ; 
 int G_RAID3_DEVICE_FLAG_VERIFY ; 
 int /*<<< orphan*/  G_RAID3_DISK_FLAG_DIRTY ; 
 int /*<<< orphan*/  G_RAID3_DISK_FLAG_FORCE_SYNC ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_DISCONNECTED ; 
 scalar_t__ G_RAID3_DISK_STATE_STALE ; 
 scalar_t__ G_RAID3_DISK_STATE_SYNCHRONIZING ; 
 int /*<<< orphan*/  G_RAID3_EVENT_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g_raid3_softc* FUNC1 (struct g_class*,char const*) ; 
 scalar_t__ FUNC2 (struct g_raid3_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,...) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int* FUNC6 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct gctl_req *req, struct g_class *mp)
{
	struct g_raid3_softc *sc;
	struct g_raid3_disk *disk;
	const char *name;
	int *nargs, do_sync = 0, dirty = 1;
	int *autosync, *noautosync;
	int *failsync, *nofailsync;
	int *round_robin, *noround_robin;
	int *verify, *noverify;
	u_int n;

	nargs = FUNC6(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC4(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs != 1) {
		FUNC4(req, "Invalid number of arguments.");
		return;
	}
	autosync = FUNC6(req, "autosync", sizeof(*autosync));
	if (autosync == NULL) {
		FUNC4(req, "No '%s' argument.", "autosync");
		return;
	}
	noautosync = FUNC6(req, "noautosync", sizeof(*noautosync));
	if (noautosync == NULL) {
		FUNC4(req, "No '%s' argument.", "noautosync");
		return;
	}
	if (*autosync && *noautosync) {
		FUNC4(req, "'%s' and '%s' specified.", "autosync",
		    "noautosync");
		return;
	}
	failsync = FUNC6(req, "failsync", sizeof(*failsync));
	if (failsync == NULL) {
		FUNC4(req, "No '%s' argument.", "failsync");
		return;
	}
	nofailsync = FUNC6(req, "nofailsync", sizeof(*nofailsync));
	if (nofailsync == NULL) {
		FUNC4(req, "No '%s' argument.", "nofailsync");
		return;
	}
	if (*failsync && *nofailsync) {
		FUNC4(req, "'%s' and '%s' specified.", "failsync",
		    "nofailsync");
		return;
	}
	round_robin = FUNC6(req, "round_robin", sizeof(*round_robin));
	if (round_robin == NULL) {
		FUNC4(req, "No '%s' argument.", "round_robin");
		return;
	}
	noround_robin = FUNC6(req, "noround_robin",
	    sizeof(*noround_robin));
	if (noround_robin == NULL) {
		FUNC4(req, "No '%s' argument.", "noround_robin");
		return;
	}
	if (*round_robin && *noround_robin) {
		FUNC4(req, "'%s' and '%s' specified.", "round_robin",
		    "noround_robin");
		return;
	}
	verify = FUNC6(req, "verify", sizeof(*verify));
	if (verify == NULL) {
		FUNC4(req, "No '%s' argument.", "verify");
		return;
	}
	noverify = FUNC6(req, "noverify", sizeof(*noverify));
	if (noverify == NULL) {
		FUNC4(req, "No '%s' argument.", "noverify");
		return;
	}
	if (*verify && *noverify) {
		FUNC4(req, "'%s' and '%s' specified.", "verify",
		    "noverify");
		return;
	}
	if (!*autosync && !*noautosync && !*failsync && !*nofailsync &&
	    !*round_robin && !*noround_robin && !*verify && !*noverify) {
		FUNC4(req, "Nothing has changed.");
		return;
	}
	name = FUNC5(req, "arg0");
	if (name == NULL) {
		FUNC4(req, "No 'arg%u' argument.", 0);
		return;
	}
	sc = FUNC1(mp, name);
	if (sc == NULL) {
		FUNC4(req, "No such device: %s.", name);
		return;
	}
	if (FUNC2(sc, -1) < sc->sc_ndisks) {
		FUNC4(req, "Not all disks connected.");
		FUNC7(&sc->sc_lock);
		return;
	}
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOAUTOSYNC) != 0) {
		if (*autosync) {
			sc->sc_flags &= ~G_RAID3_DEVICE_FLAG_NOAUTOSYNC;
			do_sync = 1;
		}
	} else {
		if (*noautosync)
			sc->sc_flags |= G_RAID3_DEVICE_FLAG_NOAUTOSYNC;
	}
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOFAILSYNC) != 0) {
		if (*failsync)
			sc->sc_flags &= ~G_RAID3_DEVICE_FLAG_NOFAILSYNC;
	} else {
		if (*nofailsync) {
			sc->sc_flags |= G_RAID3_DEVICE_FLAG_NOFAILSYNC;
			dirty = 0;
		}
	}
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_VERIFY) != 0) {
		if (*noverify)
			sc->sc_flags &= ~G_RAID3_DEVICE_FLAG_VERIFY;
	} else {
		if (*verify)
			sc->sc_flags |= G_RAID3_DEVICE_FLAG_VERIFY;
	}
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_ROUND_ROBIN) != 0) {
		if (*noround_robin)
			sc->sc_flags &= ~G_RAID3_DEVICE_FLAG_ROUND_ROBIN;
	} else {
		if (*round_robin)
			sc->sc_flags |= G_RAID3_DEVICE_FLAG_ROUND_ROBIN;
	}
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_VERIFY) != 0 &&
	    (sc->sc_flags & G_RAID3_DEVICE_FLAG_ROUND_ROBIN) != 0) {
		/*
		 * VERIFY and ROUND-ROBIN options are mutally exclusive.
		 */
		sc->sc_flags &= ~G_RAID3_DEVICE_FLAG_ROUND_ROBIN;
	}
	for (n = 0; n < sc->sc_ndisks; n++) {
		disk = &sc->sc_disks[n];
		if (do_sync) {
			if (disk->d_state == G_RAID3_DISK_STATE_SYNCHRONIZING)
				disk->d_flags &= ~G_RAID3_DISK_FLAG_FORCE_SYNC;
		}
		if (!dirty)
			disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
		FUNC3(disk);
		if (do_sync) {
			if (disk->d_state == G_RAID3_DISK_STATE_STALE) {
				/*
				 * XXX: This is probably possible that this
				 *      component will not be retasted.
				 */
				FUNC0(disk,
				    G_RAID3_DISK_STATE_DISCONNECTED,
				    G_RAID3_EVENT_DONTWAIT);
			}
		}
	}
	FUNC7(&sc->sc_lock);
}