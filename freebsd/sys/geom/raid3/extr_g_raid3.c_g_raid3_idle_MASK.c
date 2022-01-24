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
typedef  size_t u_int ;
struct g_raid3_softc {int sc_flags; int sc_idle; scalar_t__ sc_writes; int sc_last_write; size_t sc_ndisks; int /*<<< orphan*/  sc_name; struct g_raid3_disk* sc_disks; TYPE_1__* sc_provider; int /*<<< orphan*/  sc_lock; } ;
struct g_raid3_disk {scalar_t__ d_state; int /*<<< orphan*/  d_flags; } ;
struct TYPE_2__ {scalar_t__ acw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int G_RAID3_DEVICE_FLAG_NOFAILSYNC ; 
 int /*<<< orphan*/  G_RAID3_DISK_FLAG_DIRTY ; 
 scalar_t__ G_RAID3_DISK_STATE_ACTIVE ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid3_disk*) ; 
 int g_raid3_idletime ; 
 int /*<<< orphan*/  g_raid3_shutdown ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int time_uptime ; 

__attribute__((used)) static int
FUNC5(struct g_raid3_softc *sc, int acw)
{
	struct g_raid3_disk *disk;
	u_int i;
	int timeout;

	FUNC3();
	FUNC4(&sc->sc_lock, SX_XLOCKED);

	if (sc->sc_provider == NULL)
		return (0);
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOFAILSYNC) != 0)
		return (0);
	if (sc->sc_idle)
		return (0);
	if (sc->sc_writes > 0)
		return (0);
	if (acw > 0 || (acw == -1 && sc->sc_provider->acw > 0)) {
		timeout = g_raid3_idletime - (time_uptime - sc->sc_last_write);
		if (!g_raid3_shutdown && timeout > 0)
			return (timeout);
	}
	sc->sc_idle = 1;
	for (i = 0; i < sc->sc_ndisks; i++) {
		disk = &sc->sc_disks[i];
		if (disk->d_state != G_RAID3_DISK_STATE_ACTIVE)
			continue;
		FUNC0(1, "Disk %s (device %s) marked as clean.",
		    FUNC1(disk), sc->sc_name);
		disk->d_flags &= ~G_RAID3_DISK_FLAG_DIRTY;
		FUNC2(disk);
	}
	return (0);
}