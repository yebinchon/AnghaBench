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
struct g_provider {int /*<<< orphan*/  name; } ;
struct g_mirror_softc {scalar_t__ sc_genid; int /*<<< orphan*/  sc_name; } ;
struct g_mirror_metadata {scalar_t__ md_genid; scalar_t__ md_version; } ;
struct g_mirror_disk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_MIRROR_DISK_STATE_NEW ; 
 int /*<<< orphan*/  G_MIRROR_EVENT_WAIT ; 
 scalar_t__ G_MIRROR_VERSION ; 
 int FUNC1 (struct g_mirror_softc*,struct g_provider*,struct g_mirror_metadata*) ; 
 int FUNC2 (struct g_mirror_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g_mirror_disk* FUNC3 (struct g_mirror_softc*,struct g_provider*,struct g_mirror_metadata*,int*) ; 
 int FUNC4 (struct g_mirror_softc*,struct g_provider*,struct g_mirror_metadata*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_mirror_disk*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(struct g_mirror_softc *sc, struct g_provider *pp,
    struct g_mirror_metadata *md)
{
	struct g_mirror_disk *disk;
	int error;

	FUNC6();
	FUNC0(2, "Adding disk %s.", pp->name);

	error = FUNC1(sc, pp, md);
	if (error != 0)
		return (error);

	if (md->md_genid < sc->sc_genid) {
		FUNC0(0, "Component %s (device %s) broken, skipping.",
		    pp->name, sc->sc_name);
		return (EINVAL);
	}

	/*
	 * If the component disk we're tasting has newer metadata than the
	 * STARTING gmirror device, refresh the device from the component.
	 */
	error = FUNC4(sc, pp, md);
	if (error != 0)
		return (error);

	disk = FUNC3(sc, pp, md, &error);
	if (disk == NULL)
		return (error);
	error = FUNC2(disk, G_MIRROR_DISK_STATE_NEW,
	    G_MIRROR_EVENT_WAIT);
	if (error != 0)
		return (error);
	if (md->md_version < G_MIRROR_VERSION) {
		FUNC0(0, "Upgrading metadata on %s (v%d->v%d).",
		    pp->name, md->md_version, G_MIRROR_VERSION);
		FUNC5(disk);
	}
	return (0);
}