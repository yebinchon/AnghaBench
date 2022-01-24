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
struct g_raid3_disk {TYPE_1__* d_softc; } ;
struct g_consumer {struct g_raid3_disk* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_bump_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_RAID3_BUMP_SYNCID ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  G_RAID3_EVENT_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct g_consumer *cp)
{
	struct g_raid3_disk *disk;

	FUNC1();

	disk = cp->private;
	if (disk == NULL)
		return;
	disk->d_softc->sc_bump_id = G_RAID3_BUMP_SYNCID;
	FUNC0(disk, G_RAID3_DISK_STATE_DISCONNECTED,
	    G_RAID3_EVENT_DONTWAIT);
}