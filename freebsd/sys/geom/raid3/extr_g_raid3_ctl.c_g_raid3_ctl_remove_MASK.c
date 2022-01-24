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
struct gctl_req {int dummy; } ;
struct g_raid3_softc {size_t sc_ndisks; int /*<<< orphan*/  sc_lock; struct g_raid3_disk* sc_disks; } ;
struct g_raid3_disk {int d_state; } ;
struct g_class {int dummy; } ;
typedef  size_t intmax_t ;

/* Variables and functions */
#define  G_RAID3_DISK_STATE_ACTIVE 131 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_DISCONNECTED ; 
#define  G_RAID3_DISK_STATE_NODISK 130 
#define  G_RAID3_DISK_STATE_STALE 129 
#define  G_RAID3_DISK_STATE_SYNCHRONIZING 128 
 int /*<<< orphan*/  G_RAID3_EVENT_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g_raid3_softc* FUNC2 (struct g_class*,char const*) ; 
 size_t FUNC3 (struct g_raid3_disk*) ; 
 size_t FUNC4 (struct g_raid3_softc*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,...) ; 
 char* FUNC6 (struct gctl_req*,char*) ; 
 void* FUNC7 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req, struct g_class *mp)
{
	struct g_raid3_softc *sc;
	struct g_raid3_disk *disk;
	const char *name;
	intmax_t *no;
	int *nargs;

	nargs = FUNC7(req, "nargs", sizeof(*nargs));
	if (nargs == NULL) {
		FUNC5(req, "No '%s' argument.", "nargs");
		return;
	}
	if (*nargs != 1) {
		FUNC5(req, "Invalid number of arguments.");
		return;
	}
	no = FUNC7(req, "number", sizeof(*no));
	if (no == NULL) {
		FUNC5(req, "No '%s' argument.", "no");
		return;
	}
	name = FUNC6(req, "arg0");
	if (name == NULL) {
		FUNC5(req, "No 'arg%u' argument.", 0);
		return;
	}
	sc = FUNC2(mp, name);
	if (sc == NULL) {
		FUNC5(req, "No such device: %s.", name);
		return;
	}
	if (*no >= sc->sc_ndisks) {
		FUNC8(&sc->sc_lock);
		FUNC5(req, "Invalid component number.");
		return;
	}
	disk = &sc->sc_disks[*no];
	switch (disk->d_state) {
	case G_RAID3_DISK_STATE_ACTIVE:
		/*
		 * When replacing ACTIVE component, all the rest has to be also
		 * ACTIVE.
		 */
		if (FUNC4(sc, G_RAID3_DISK_STATE_ACTIVE) <
		    sc->sc_ndisks) {
			FUNC5(req, "Cannot replace component number %jd.",
			    *no);
			break;
		}
		/* FALLTHROUGH */
	case G_RAID3_DISK_STATE_STALE:
	case G_RAID3_DISK_STATE_SYNCHRONIZING:
		if (FUNC0(disk) != 0) {
			FUNC5(req, "Cannot clear metadata on %s.",
			    FUNC3(disk));
		} else {
			FUNC1(disk,
			    G_RAID3_DISK_STATE_DISCONNECTED,
			    G_RAID3_EVENT_DONTWAIT);
		}
		break;
	case G_RAID3_DISK_STATE_NODISK:
		break;
	default:
		FUNC5(req, "Cannot replace component number %jd.", *no);
		break;
	}
	FUNC8(&sc->sc_lock);
}