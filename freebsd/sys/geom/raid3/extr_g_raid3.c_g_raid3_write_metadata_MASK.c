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
typedef  int /*<<< orphan*/  u_char ;
struct g_raid3_softc {scalar_t__ sc_state; int /*<<< orphan*/  sc_bump_id; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_lock; } ;
struct g_raid3_metadata {int dummy; } ;
struct g_raid3_disk {int d_flags; struct g_consumer* d_consumer; struct g_raid3_softc* d_softc; } ;
struct g_consumer {int acr; int acw; int ace; TYPE_1__* provider; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ mediasize; scalar_t__ sectorsize; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_RAID3_BUMP_GENID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ G_RAID3_DEVICE_STATE_COMPLETE ; 
 int G_RAID3_DISK_FLAG_BROKEN ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  G_RAID3_EVENT_DONTWAIT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_RAID3 ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ g_raid3_disconnect_on_failure ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct g_consumer*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct g_raid3_metadata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct g_raid3_disk *disk, struct g_raid3_metadata *md)
{
	struct g_raid3_softc *sc;
	struct g_consumer *cp;
	off_t offset, length;
	u_char *sector;
	int error = 0;

	FUNC5();
	sc = disk->d_softc;
	FUNC9(&sc->sc_lock, SX_LOCKED);

	cp = disk->d_consumer;
	FUNC1(cp != NULL, ("NULL consumer (%s).", sc->sc_name));
	FUNC1(cp->provider != NULL, ("NULL provider (%s).", sc->sc_name));
	FUNC1(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
	    ("Consumer %s closed? (r%dw%de%d).", cp->provider->name, cp->acr,
	    cp->acw, cp->ace));
	length = cp->provider->sectorsize;
	offset = cp->provider->mediasize - length;
	sector = FUNC7((size_t)length, M_RAID3, M_WAITOK | M_ZERO);
	if (md != NULL)
		FUNC8(md, sector);
	error = FUNC6(cp, offset, sector, length);
	FUNC2(sector, M_RAID3);
	if (error != 0) {
		if ((disk->d_flags & G_RAID3_DISK_FLAG_BROKEN) == 0) {
			FUNC0(0, "Cannot write metadata on %s "
			    "(device=%s, error=%d).",
			    FUNC4(disk), sc->sc_name, error);
			disk->d_flags |= G_RAID3_DISK_FLAG_BROKEN;
		} else {
			FUNC0(1, "Cannot write metadata on %s "
			    "(device=%s, error=%d).",
			    FUNC4(disk), sc->sc_name, error);
		}
		if (g_raid3_disconnect_on_failure &&
		    sc->sc_state == G_RAID3_DEVICE_STATE_COMPLETE) {
			sc->sc_bump_id |= G_RAID3_BUMP_GENID;
			FUNC3(disk,
			    G_RAID3_DISK_STATE_DISCONNECTED,
			    G_RAID3_EVENT_DONTWAIT);
		}
	}
	return (error);
}