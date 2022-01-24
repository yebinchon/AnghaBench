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
struct g_raid3_softc {int /*<<< orphan*/ * sc_syncdisk; int /*<<< orphan*/  sc_lock; } ;
struct g_raid3_disk {int d_state; int /*<<< orphan*/ * d_consumer; struct g_raid3_softc* d_softc; } ;

/* Variables and functions */
#define  G_RAID3_DISK_STATE_ACTIVE 131 
#define  G_RAID3_DISK_STATE_NEW 130 
 int G_RAID3_DISK_STATE_NODISK ; 
#define  G_RAID3_DISK_STATE_STALE 129 
#define  G_RAID3_DISK_STATE_SYNCHRONIZING 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid3_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_raid3_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct g_raid3_disk *disk)
{
	struct g_raid3_softc *sc;

	FUNC6();
	sc = disk->d_softc;
	FUNC9(&sc->sc_lock, SX_XLOCKED);

	if (disk->d_state == G_RAID3_DISK_STATE_NODISK)
		return;
	FUNC3(disk);
	switch (disk->d_state) {
	case G_RAID3_DISK_STATE_SYNCHRONIZING:
		if (sc->sc_syncdisk != NULL)
			FUNC5(sc, 1);
		/* FALLTHROUGH */
	case G_RAID3_DISK_STATE_NEW:
	case G_RAID3_DISK_STATE_STALE:
	case G_RAID3_DISK_STATE_ACTIVE:
		FUNC7();
		FUNC1(sc, disk->d_consumer);
		FUNC8();
		disk->d_consumer = NULL;
		break;
	default:
		FUNC0(0 == 1, ("Wrong disk state (%s, %s).",
		    FUNC4(disk),
		    FUNC2(disk->d_state)));
	}
	disk->d_state = G_RAID3_DISK_STATE_NODISK;
}