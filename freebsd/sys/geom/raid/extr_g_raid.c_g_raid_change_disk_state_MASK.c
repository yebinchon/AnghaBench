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
struct g_raid_disk {int d_state; int /*<<< orphan*/  d_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_disk*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_disk*) ; 

void
FUNC4(struct g_raid_disk *disk, int state)
{

	FUNC0(0, disk->d_softc, "Disk %s state changed from %s to %s.",
	    FUNC2(disk),
	    FUNC1(disk->d_state),
	    FUNC1(state));
	disk->d_state = state;
	FUNC3(disk);
}