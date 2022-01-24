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
struct g_raid_volume {scalar_t__ v_tr; int /*<<< orphan*/  v_name; } ;
struct g_raid_subdisk {scalar_t__ sd_disk; int /*<<< orphan*/  sd_pos; struct g_raid_volume* sd_volume; struct g_raid_softc* sd_softc; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct g_raid_subdisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct g_raid_subdisk *sd, u_int event)
{
	struct g_raid_softc *sc;
	struct g_raid_volume *vol;

	sc = sd->sd_softc;
	vol = sd->sd_volume;
	FUNC4(&sc->sc_lock, SX_XLOCKED);

	FUNC0(2, sc, "Event %s for subdisk %s:%d-%s.",
	    FUNC3(event),
	    vol->v_name, sd->sd_pos,
	    sd->sd_disk ? FUNC2(sd->sd_disk) : "[none]");
	if (vol->v_tr)
		FUNC1(vol->v_tr, sd, event);

	return (0);
}