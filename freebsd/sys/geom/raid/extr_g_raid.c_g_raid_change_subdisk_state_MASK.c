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
struct g_raid_subdisk {int sd_state; scalar_t__ sd_disk; int /*<<< orphan*/  sd_pos; TYPE_1__* sd_volume; int /*<<< orphan*/  sd_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(struct g_raid_subdisk *sd, int state)
{

	FUNC0(0, sd->sd_softc,
	    "Subdisk %s:%d-%s state changed from %s to %s.",
	    sd->sd_volume->v_name, sd->sd_pos,
	    sd->sd_disk ? FUNC1(sd->sd_disk) : "[none]",
	    FUNC3(sd->sd_state),
	    FUNC3(state));
	sd->sd_state = state;
	if (sd->sd_disk)
		FUNC2(sd->sd_disk);
}