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
struct TYPE_4__ {int /*<<< orphan*/  ds_ndisks; } ;
struct g_mirror_softc {int /*<<< orphan*/  sc_lock; TYPE_2__ sc_sync; int /*<<< orphan*/  sc_name; } ;
struct TYPE_3__ {struct g_consumer* ds_consumer; int /*<<< orphan*/ * ds_bios; } ;
struct g_mirror_disk {scalar_t__ d_state; int /*<<< orphan*/  d_flags; TYPE_1__ d_sync; struct g_mirror_softc* d_softc; } ;
struct g_consumer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_DIRTY ; 
 scalar_t__ G_MIRROR_DISK_STATE_SYNCHRONIZING ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_MIRROR ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct g_mirror_disk*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_mirror_softc*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_mirror_softc*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct g_mirror_disk *disk, int type)
{
	struct g_mirror_softc *sc;
	struct g_consumer *cp;

	FUNC7();
	sc = disk->d_softc;
	FUNC10(&sc->sc_lock, SX_LOCKED);

	FUNC1(disk->d_state == G_MIRROR_DISK_STATE_SYNCHRONIZING,
	    ("Wrong disk state (%s, %s).", FUNC4(disk),
	    FUNC3(disk->d_state)));
	if (disk->d_sync.ds_consumer == NULL)
		return;

	if (type == 0) {
		FUNC0(0, "Device %s: rebuilding provider %s finished.",
		    sc->sc_name, FUNC4(disk));
	} else /* if (type == 1) */ {
		FUNC0(0, "Device %s: rebuilding provider %s stopped.",
		    sc->sc_name, FUNC4(disk));
	}
	FUNC6(sc);
	FUNC2(disk->d_sync.ds_bios, M_MIRROR);
	disk->d_sync.ds_bios = NULL;
	cp = disk->d_sync.ds_consumer;
	disk->d_sync.ds_consumer = NULL;
	disk->d_flags &= ~G_MIRROR_DISK_FLAG_DIRTY;
	sc->sc_sync.ds_ndisks--;
	FUNC12(&sc->sc_lock); /* Avoid recursion on sc_lock. */
	FUNC8();
	FUNC5(sc, cp);
	FUNC9();
	FUNC11(&sc->sc_lock);
}