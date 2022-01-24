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
struct g_slicer {struct g_slice* slices; } ;
struct g_slice {scalar_t__ length; scalar_t__ offset; } ;
struct g_geom {int /*<<< orphan*/  consumer; struct g_slicer* softc; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; int /*<<< orphan*/  bio_done; TYPE_1__* bio_to; int /*<<< orphan*/ * bio_from; } ;
struct TYPE_2__ {int index; struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct g_consumer* FUNC1 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  g_std_done ; 

void
FUNC5(struct bio *bp)
{
	struct bio *bp2;
	struct g_geom *gp;
	struct g_consumer *cp;
	struct g_slicer *gsp;
	struct g_slice *gsl;
	int idx;

	FUNC0(bp->bio_to != NULL,
	    ("NULL bio_to in g_slice_finish_hot(%p)", bp));
	FUNC0(bp->bio_from != NULL,
	    ("NULL bio_from in g_slice_finish_hot(%p)", bp));
	gp = bp->bio_to->geom;
	gsp = gp->softc;
	cp = FUNC1(&gp->consumer);
	FUNC0(cp != NULL, ("NULL consumer in g_slice_finish_hot(%p)", bp));
	idx = bp->bio_to->index;
	gsl = &gsp->slices[idx];

	bp2 = FUNC2(bp);
	if (bp2 == NULL) {
		FUNC3(bp, ENOMEM);
		return;
	}
	if (bp2->bio_offset + bp2->bio_length > gsl->length)
		bp2->bio_length = gsl->length - bp2->bio_offset;
	bp2->bio_done = g_std_done;
	bp2->bio_offset += gsl->offset;
	FUNC4(bp2, cp);
	return;
}