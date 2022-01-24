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
struct gctl_req {int dummy; } ;
struct g_raid3_softc {scalar_t__ sc_ndisks; int sc_flags; int /*<<< orphan*/  sc_lock; } ;
struct g_raid3_metadata {int dummy; } ;
struct TYPE_3__ {scalar_t__ ds_syncid; } ;
struct g_raid3_disk {scalar_t__ d_state; TYPE_2__* d_consumer; int /*<<< orphan*/  d_flags; TYPE_1__ d_sync; } ;
struct g_provider {char const* name; } ;
struct g_class {int dummy; } ;
struct TYPE_4__ {struct g_provider* provider; } ;

/* Variables and functions */
 int G_RAID3_DEVICE_FLAG_NOAUTOSYNC ; 
 int /*<<< orphan*/  G_RAID3_DISK_FLAG_FORCE_SYNC ; 
 scalar_t__ G_RAID3_DISK_STATE_ACTIVE ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  G_RAID3_EVENT_WAIT ; 
 int FUNC0 (struct g_raid3_softc*,struct g_provider*,struct g_raid3_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g_raid3_softc* FUNC2 (struct g_class*,char const*) ; 
 struct g_raid3_disk* FUNC3 (struct g_raid3_softc*,char const*) ; 
 scalar_t__ FUNC4 (struct g_raid3_softc*,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,struct g_raid3_metadata*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct gctl_req*,char*,...) ; 
 char* FUNC10 (struct gctl_req*,char*) ; 
 int* FUNC11 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct gctl_req *req, struct g_class *mp)
{
	struct g_raid3_metadata md;
	struct g_raid3_softc *sc;
	struct g_raid3_disk *disk;
	struct g_provider *pp;
	const char *name;
	int error, *nargs;

	nargs = FUNC11(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC9(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs != 2) {
		FUNC9(req, "Invalid number of arguments.");
		return;
	}
	name = FUNC10(req, "arg0");
	if (name == NULL) {
		FUNC9(req, "No 'arg%u' argument.", 0);
		return;
	}
	sc = FUNC2(mp, name);
	if (sc == NULL) {
		FUNC9(req, "No such device: %s.", name);
		return;
	}
	name = FUNC10(req, "arg1");
	if (name == NULL) {
		FUNC9(req, "No 'arg%u' argument.", 1);
		FUNC12(&sc->sc_lock);
		return;
	}
	disk = FUNC3(sc, name);
	if (disk == NULL) {
		FUNC9(req, "No such provider: %s.", name);
		FUNC12(&sc->sc_lock);
		return;
	}
	if (disk->d_state == G_RAID3_DISK_STATE_ACTIVE &&
	    FUNC4(sc, G_RAID3_DISK_STATE_ACTIVE) < sc->sc_ndisks) {
		FUNC9(req, "There is one stale disk already.");
		FUNC12(&sc->sc_lock);
		return;
	}
	/*
	 * Do rebuild by resetting syncid and disconnecting disk.
	 * It'll be retasted, connected to the device and synchronized.
	 */
	disk->d_sync.ds_syncid = 0;
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOAUTOSYNC) != 0)
		disk->d_flags |= G_RAID3_DISK_FLAG_FORCE_SYNC;
	FUNC6(disk);
	pp = disk->d_consumer->provider;
	FUNC7();
	error = FUNC5(disk->d_consumer, &md);
	FUNC8();
	FUNC1(disk, G_RAID3_DISK_STATE_DISCONNECTED,
	    G_RAID3_EVENT_WAIT);
	if (error != 0) {
		FUNC9(req, "Cannot read metadata from %s.", pp->name);
		FUNC12(&sc->sc_lock);
		return;
	}
	error = FUNC0(sc, pp, &md);
	if (error != 0)
		FUNC9(req, "Cannot reconnect component %s.", pp->name);
	FUNC12(&sc->sc_lock);
}