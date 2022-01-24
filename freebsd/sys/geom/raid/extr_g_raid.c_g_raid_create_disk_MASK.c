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
struct g_raid_softc {int /*<<< orphan*/  sc_disks; } ;
struct g_raid_disk {int /*<<< orphan*/  d_subdisks; int /*<<< orphan*/  d_state; struct g_raid_softc* d_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*) ; 
 int /*<<< orphan*/  G_RAID_DISK_S_NONE ; 
 int /*<<< orphan*/  M_RAID ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct g_raid_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_next ; 
 struct g_raid_disk* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

struct g_raid_disk *
FUNC4(struct g_raid_softc *sc)
{
	struct g_raid_disk	*disk;

	FUNC0(1, sc, "Creating disk.");
	disk = FUNC3(sizeof(*disk), M_RAID, M_WAITOK | M_ZERO);
	disk->d_softc = sc;
	disk->d_state = G_RAID_DISK_S_NONE;
	FUNC1(&disk->d_subdisks);
	FUNC2(&sc->sc_disks, disk, d_next);
	return (disk);
}