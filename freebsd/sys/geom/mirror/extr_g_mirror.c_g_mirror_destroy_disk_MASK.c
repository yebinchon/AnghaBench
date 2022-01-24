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
struct g_mirror_softc {struct g_mirror_disk* sc_hint; int /*<<< orphan*/  sc_lock; } ;
struct g_mirror_disk {int d_state; int /*<<< orphan*/  d_consumer; struct g_mirror_softc* d_softc; } ;

/* Variables and functions */
#define  G_MIRROR_DISK_STATE_ACTIVE 131 
#define  G_MIRROR_DISK_STATE_NEW 130 
#define  G_MIRROR_DISK_STATE_STALE 129 
#define  G_MIRROR_DISK_STATE_SYNCHRONIZING 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_mirror_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MIRROR ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  d_next ; 
 int /*<<< orphan*/  FUNC2 (struct g_mirror_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_mirror_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct g_mirror_disk*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_mirror_disk*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_mirror_disk*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct g_mirror_disk *disk)
{
	struct g_mirror_softc *sc;

	FUNC8();
	sc = disk->d_softc;
	FUNC11(&sc->sc_lock, SX_XLOCKED);

	FUNC9();
	FUNC1(disk, d_next);
	FUNC10();
	FUNC5(disk);
	if (sc->sc_hint == disk)
		sc->sc_hint = NULL;
	switch (disk->d_state) {
	case G_MIRROR_DISK_STATE_SYNCHRONIZING:
		FUNC7(disk, 1);
		/* FALLTHROUGH */
	case G_MIRROR_DISK_STATE_NEW:
	case G_MIRROR_DISK_STATE_STALE:
	case G_MIRROR_DISK_STATE_ACTIVE:
		FUNC9();
		FUNC3(sc, disk->d_consumer);
		FUNC10();
		FUNC2(disk, M_MIRROR);
		break;
	default:
		FUNC0(0 == 1, ("Wrong disk state (%s, %s).",
		    FUNC6(disk),
		    FUNC4(disk->d_state)));
	}
}