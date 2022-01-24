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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {struct g_geom* ds_geom; scalar_t__ ds_ndisks; } ;
struct g_mirror_softc {int sc_idle; int sc_refcnt; struct g_geom* sc_geom; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_rootmount; int /*<<< orphan*/  sc_id; int /*<<< orphan*/  sc_ndisks; int /*<<< orphan*/  sc_name; TYPE_1__ sc_sync; int /*<<< orphan*/  sc_worker; scalar_t__ sc_provider_open; int /*<<< orphan*/ * sc_provider; int /*<<< orphan*/  sc_state; int /*<<< orphan*/  sc_done_mtx; int /*<<< orphan*/  sc_events_mtx; int /*<<< orphan*/  sc_events; int /*<<< orphan*/  sc_disks; int /*<<< orphan*/  sc_sync_delayed; int /*<<< orphan*/  sc_inflight; int /*<<< orphan*/  sc_regular_delayed; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_queue; int /*<<< orphan*/  sc_lock; scalar_t__ sc_writes; int /*<<< orphan*/  sc_last_write; scalar_t__ sc_bump_id; int /*<<< orphan*/  sc_sectorsize; int /*<<< orphan*/  sc_type; } ;
struct g_mirror_metadata {int md_all; int /*<<< orphan*/  md_name; int /*<<< orphan*/  md_sectorsize; int /*<<< orphan*/  md_mid; } ;
struct g_geom {void* orphan; struct g_mirror_softc* softc; int /*<<< orphan*/  dumpconf; int /*<<< orphan*/  access; int /*<<< orphan*/  start; } ;
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_MIRROR_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_MIRROR ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct g_mirror_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_geom*) ; 
 int /*<<< orphan*/  g_mirror_access ; 
 int /*<<< orphan*/  g_mirror_dumpconf ; 
 int /*<<< orphan*/  FUNC6 (struct g_mirror_softc*) ; 
 int /*<<< orphan*/  g_mirror_go ; 
 void* g_mirror_orphan ; 
 int /*<<< orphan*/  FUNC7 (struct g_mirror_softc*,struct g_mirror_metadata const*) ; 
 int /*<<< orphan*/  g_mirror_start ; 
 int g_mirror_timeout ; 
 int /*<<< orphan*/  g_mirror_worker ; 
 struct g_geom* FUNC8 (struct g_class*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int hz ; 
 int FUNC10 (int /*<<< orphan*/ ,struct g_mirror_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct g_mirror_softc* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  time_uptime ; 

struct g_geom *
FUNC15(struct g_class *mp, const struct g_mirror_metadata *md,
    u_int type)
{
	struct g_mirror_softc *sc;
	struct g_geom *gp;
	int error, timeout;

	FUNC9();
	FUNC0(1, "Creating device %s (id=%u).", md->md_name,
	    md->md_mid);

	/* One disk is minimum. */
	if (md->md_all < 1)
		return (NULL);
	/*
	 * Action geom.
	 */
	gp = FUNC8(mp, "%s", md->md_name);
	sc = FUNC11(sizeof(*sc), M_MIRROR, M_WAITOK | M_ZERO);
	gp->start = g_mirror_start;
	gp->orphan = g_mirror_orphan;
	gp->access = g_mirror_access;
	gp->dumpconf = g_mirror_dumpconf;

	sc->sc_type = type;
	sc->sc_id = md->md_mid;
	FUNC7(sc, md);
	sc->sc_sectorsize = md->md_sectorsize;
	sc->sc_bump_id = 0;
	sc->sc_idle = 1;
	sc->sc_last_write = time_uptime;
	sc->sc_writes = 0;
	sc->sc_refcnt = 1;
	FUNC14(&sc->sc_lock, "gmirror:lock");
	FUNC2(&sc->sc_queue);
	FUNC12(&sc->sc_queue_mtx, "gmirror:queue", NULL, MTX_DEF);
	FUNC2(&sc->sc_regular_delayed);
	FUNC2(&sc->sc_inflight);
	FUNC2(&sc->sc_sync_delayed);
	FUNC1(&sc->sc_disks);
	FUNC2(&sc->sc_events);
	FUNC12(&sc->sc_events_mtx, "gmirror:events", NULL, MTX_DEF);
	FUNC3(&sc->sc_callout, 1);
	FUNC12(&sc->sc_done_mtx, "gmirror:done", NULL, MTX_DEF);
	sc->sc_state = G_MIRROR_DEVICE_STATE_STARTING;
	gp->softc = sc;
	sc->sc_geom = gp;
	sc->sc_provider = NULL;
	sc->sc_provider_open = 0;
	/*
	 * Synchronization geom.
	 */
	gp = FUNC8(mp, "%s.sync", md->md_name);
	gp->softc = sc;
	gp->orphan = g_mirror_orphan;
	sc->sc_sync.ds_geom = gp;
	sc->sc_sync.ds_ndisks = 0;
	error = FUNC10(g_mirror_worker, sc, &sc->sc_worker, 0, 0,
	    "g_mirror %s", md->md_name);
	if (error != 0) {
		FUNC0(1, "Cannot create kernel thread for %s.",
		    sc->sc_name);
		FUNC5(sc->sc_sync.ds_geom);
		FUNC5(sc->sc_geom);
		FUNC6(sc);
		return (NULL);
	}

	FUNC0(1, "Device %s created (%u components, id=%u).",
	    sc->sc_name, sc->sc_ndisks, sc->sc_id);

	sc->sc_rootmount = FUNC13("GMIRROR");
	FUNC0(1, "root_mount_hold %p", sc->sc_rootmount);
	/*
	 * Run timeout.
	 */
	timeout = g_mirror_timeout * hz;
	FUNC4(&sc->sc_callout, timeout, g_mirror_go, sc);
	return (sc->sc_geom);
}