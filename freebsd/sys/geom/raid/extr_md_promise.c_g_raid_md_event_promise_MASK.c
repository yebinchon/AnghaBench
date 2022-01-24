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
typedef  int u_int ;
struct g_raid_softc {int dummy; } ;
struct g_raid_md_object {struct g_raid_softc* mdo_softc; } ;
struct g_raid_disk {int dummy; } ;

/* Variables and functions */
#define  G_RAID_DISK_E_DISCONNECTED 128 
 int /*<<< orphan*/  G_RAID_DISK_S_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct g_raid_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_disk*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_raid_md_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid_softc*,int) ; 

__attribute__((used)) static int
FUNC7(struct g_raid_md_object *md,
    struct g_raid_disk *disk, u_int event)
{
	struct g_raid_softc *sc;

	sc = md->mdo_softc;
	if (disk == NULL)
		return (-1);
	switch (event) {
	case G_RAID_DISK_E_DISCONNECTED:
		/* Delete disk. */
		FUNC0(disk, G_RAID_DISK_S_NONE);
		FUNC1(disk);
		FUNC3(sc);

		/* Write updated metadata to all disks. */
		FUNC5(md, NULL, NULL, NULL);

		/* Check if anything left. */
		if (FUNC6(sc, -1) == 0)
			FUNC2(sc, 0);
		else
			FUNC4(sc);
		return (0);
	}
	return (-2);
}