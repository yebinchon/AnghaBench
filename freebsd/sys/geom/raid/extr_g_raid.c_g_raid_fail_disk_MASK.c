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
struct g_raid_subdisk {struct g_raid_disk* sd_disk; } ;
struct g_raid_softc {scalar_t__ sc_md; } ;
struct g_raid_disk {scalar_t__ d_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct g_raid_softc*,char*,...) ; 
 scalar_t__ G_RAID_DISK_S_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct g_raid_subdisk*,struct g_raid_disk*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct g_raid_softc *sc,
    struct g_raid_subdisk *sd, struct g_raid_disk *disk)
{

	if (disk == NULL)
		disk = sd->sd_disk;
	if (disk == NULL) {
		FUNC0(0, sc, "Warning! Fail request to an absent disk!");
		return;
	}
	if (disk->d_state != G_RAID_DISK_S_ACTIVE) {
		FUNC0(0, sc, "Warning! Fail request to a disk in a "
		    "wrong state (%s)!", FUNC2(disk->d_state));
		return;
	}
	if (sc->sc_md)
		FUNC1(sc->sc_md, sd, disk);
}