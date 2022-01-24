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
struct g_mirror_softc {scalar_t__ sc_type; int sc_flags; int /*<<< orphan*/  sc_lock; } ;
struct g_mirror_metadata {int dummy; } ;
struct g_mirror_disk {struct g_mirror_softc* d_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int G_MIRROR_DEVICE_FLAG_WIPE ; 
 scalar_t__ G_MIRROR_TYPE_AUTOMATIC ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct g_mirror_softc*,struct g_mirror_disk*,struct g_mirror_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_mirror_disk*) ; 
 int FUNC3 (struct g_mirror_disk*,struct g_mirror_metadata*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct g_mirror_disk *disk)
{
	struct g_mirror_softc *sc;
	struct g_mirror_metadata md;
	int error;

	FUNC4();
	sc = disk->d_softc;
	FUNC5(&sc->sc_lock, SX_LOCKED);

	if (sc->sc_type != G_MIRROR_TYPE_AUTOMATIC)
		return;
	if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_WIPE) == 0)
		FUNC1(sc, disk, &md);
	error = FUNC3(disk, &md);
	if (error == 0) {
		FUNC0(2, "Metadata on %s updated.",
		    FUNC2(disk));
	} else {
		FUNC0(0,
		    "Cannot update metadata on disk %s (error=%d).",
		    FUNC2(disk), error);
	}
}