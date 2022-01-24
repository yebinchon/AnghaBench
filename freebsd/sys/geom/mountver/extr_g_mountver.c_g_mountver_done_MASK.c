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
struct g_geom {int /*<<< orphan*/  provider; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_to; int /*<<< orphan*/  bio_inbed; struct bio* bio_parent; TYPE_1__* bio_from; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct g_geom *gp;
	struct bio *pbp;

	if (bp->bio_error != ENXIO) {
		FUNC4(bp);
		return;
	}

	/*
	 * When the device goes away, it's possible that few requests
	 * will be completed with ENXIO before g_mountver_orphan()
	 * gets called.  To work around that, we have to queue requests
	 * that failed with ENXIO, in order to send them later.
	 */
	gp = bp->bio_from->geom;

	pbp = bp->bio_parent;
	FUNC0(pbp->bio_to == FUNC1(&gp->provider),
	    ("parent request was for someone else"));
	FUNC2(bp);
	pbp->bio_inbed++;
	FUNC3(pbp);
}