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
typedef  int /*<<< orphan*/  u_int ;
struct g_raid_softc {scalar_t__ sc_md; int /*<<< orphan*/  sc_lock; } ;
struct g_raid_disk {struct g_raid_softc* d_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct g_raid_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_disk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct g_raid_disk *disk, u_int event)
{
	struct g_raid_softc *sc;

	sc = disk->d_softc;
	FUNC4(&sc->sc_lock, SX_XLOCKED);

	FUNC0(2, sc, "Event %s for disk %s.",
	    FUNC2(event),
	    FUNC3(disk));

	if (sc->sc_md)
		FUNC1(sc->sc_md, disk, event);
	return (0);
}