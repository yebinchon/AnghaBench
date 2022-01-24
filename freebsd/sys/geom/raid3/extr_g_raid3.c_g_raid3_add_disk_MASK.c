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
struct g_raid3_softc {scalar_t__ sc_state; scalar_t__ sc_genid; int /*<<< orphan*/  sc_name; } ;
struct g_raid3_metadata {scalar_t__ md_genid; scalar_t__ md_version; } ;
struct g_raid3_disk {int dummy; } ;
struct g_provider {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ G_RAID3_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_NEW ; 
 int /*<<< orphan*/  G_RAID3_EVENT_WAIT ; 
 scalar_t__ G_RAID3_VERSION ; 
 int FUNC1 (struct g_raid3_softc*,struct g_provider*,struct g_raid3_metadata*) ; 
 int FUNC2 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct g_raid3_disk* FUNC3 (struct g_raid3_softc*,struct g_provider*,struct g_raid3_metadata*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(struct g_raid3_softc *sc, struct g_provider *pp,
    struct g_raid3_metadata *md)
{
	struct g_raid3_disk *disk;
	int error;

	FUNC5();
	FUNC0(2, "Adding disk %s.", pp->name);

	error = FUNC1(sc, pp, md);
	if (error != 0)
		return (error);
	if (sc->sc_state != G_RAID3_DEVICE_STATE_STARTING &&
	    md->md_genid < sc->sc_genid) {
		FUNC0(0, "Component %s (device %s) broken, skipping.",
		    pp->name, sc->sc_name);
		return (EINVAL);
	}
	disk = FUNC3(sc, pp, md, &error);
	if (disk == NULL)
		return (error);
	error = FUNC2(disk, G_RAID3_DISK_STATE_NEW,
	    G_RAID3_EVENT_WAIT);
	if (error != 0)
		return (error);
	if (md->md_version < G_RAID3_VERSION) {
		FUNC0(0, "Upgrading metadata on %s (v%d->v%d).",
		    pp->name, md->md_version, G_RAID3_VERSION);
		FUNC4(disk);
	}
	return (0);
}