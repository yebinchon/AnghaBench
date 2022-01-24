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
struct g_raid3_softc {scalar_t__ sc_state; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_name; struct g_raid3_disk* sc_syncdisk; } ;
struct TYPE_2__ {struct g_consumer* ds_consumer; int /*<<< orphan*/ * ds_bios; } ;
struct g_raid3_disk {scalar_t__ d_state; int /*<<< orphan*/  d_flags; TYPE_1__ d_sync; } ;
struct g_consumer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ G_RAID3_DEVICE_STATE_DEGRADED ; 
 int /*<<< orphan*/  G_RAID3_DISK_FLAG_DIRTY ; 
 scalar_t__ G_RAID3_DISK_STATE_SYNCHRONIZING ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_RAID3 ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_raid3_softc*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct g_raid3_softc *sc, int type)
{
	struct g_raid3_disk *disk;
	struct g_consumer *cp;

	FUNC6();
	FUNC9(&sc->sc_lock, SX_LOCKED);

	FUNC1(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED,
	    ("Device not in DEGRADED state (%s, %u).", sc->sc_name,
	    sc->sc_state));
	disk = sc->sc_syncdisk;
	sc->sc_syncdisk = NULL;
	FUNC1(disk != NULL, ("No disk was synchronized (%s).", sc->sc_name));
	FUNC1(disk->d_state == G_RAID3_DISK_STATE_SYNCHRONIZING,
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
	FUNC2(disk->d_sync.ds_bios, M_RAID3);
	disk->d_sync.ds_bios = NULL;
	cp = disk->d_sync.ds_consumer;
	disk->d_sync.ds_consumer = NULL;
	disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
	FUNC11(&sc->sc_lock); /* Avoid recursion on sc_lock. */
	FUNC7();
	FUNC5(sc, cp);
	FUNC8();
	FUNC10(&sc->sc_lock);
}