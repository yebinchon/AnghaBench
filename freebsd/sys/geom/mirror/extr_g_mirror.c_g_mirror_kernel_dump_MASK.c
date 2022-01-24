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
struct g_mirror_softc {int /*<<< orphan*/  sc_disks; } ;
struct g_mirror_disk {int /*<<< orphan*/  d_consumer; } ;
struct g_kerneldump {scalar_t__ length; } ;
struct bio {int /*<<< orphan*/  bio_done; TYPE_1__* bio_to; scalar_t__ bio_data; } ;
struct TYPE_2__ {scalar_t__ mediasize; struct g_mirror_softc* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct g_mirror_disk* FUNC1 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct g_mirror_disk*) ; 
 int /*<<< orphan*/  g_std_done ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct g_mirror_softc *sc;
	struct g_mirror_disk *disk;
	struct bio *cbp;
	struct g_kerneldump *gkd;

	/*
	 * We configure dumping to the first component, because this component
	 * will be used for reading with 'prefer' balance algorithm.
	 * If the component with the highest priority is currently disconnected
	 * we will not be able to read the dump after the reboot if it will be
	 * connected and synchronized later. Can we do something better?
	 */
	sc = bp->bio_to->private;
	disk = FUNC1(&sc->sc_disks);

	gkd = (struct g_kerneldump *)bp->bio_data;
	if (gkd->length > bp->bio_to->mediasize)
		gkd->length = bp->bio_to->mediasize;
	cbp = FUNC2(bp);
	if (cbp == NULL) {
		FUNC3(bp, ENOMEM);
		return;
	}
	cbp->bio_done = g_std_done;
	FUNC4(cbp, disk->d_consumer);
	FUNC0(1, "Kernel dump will go to %s.",
	    FUNC5(disk));
}