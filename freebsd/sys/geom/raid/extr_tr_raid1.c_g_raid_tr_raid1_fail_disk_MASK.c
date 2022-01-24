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
struct g_raid_subdisk {int /*<<< orphan*/  sd_volume; } ;
struct g_raid_softc {int dummy; } ;
struct g_raid_disk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_RAID_SUBDISK_S_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct g_raid_softc*,struct g_raid_subdisk*,struct g_raid_disk*) ; 
 struct g_raid_subdisk* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct g_raid_softc *sc, struct g_raid_subdisk *sd,
    struct g_raid_disk *disk)
{
	/*
	 * We don't fail the last disk in the pack, since it still has decent
	 * data on it and that's better than failing the disk if it is the root
	 * file system.
	 *
	 * XXX should this be controlled via a tunable?  It makes sense for
	 * the volume that has / on it.  I can't think of a case where we'd
	 * want the volume to go away on this kind of event.
	 */
	if (FUNC2(sd->sd_volume, G_RAID_SUBDISK_S_ACTIVE) == 1 &&
	    FUNC1(sd->sd_volume, G_RAID_SUBDISK_S_ACTIVE) == sd)
		return;
	FUNC0(sc, sd, disk);
}