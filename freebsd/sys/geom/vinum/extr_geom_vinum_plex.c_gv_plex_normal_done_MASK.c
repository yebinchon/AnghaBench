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
struct gv_plex {int dummy; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_inbed; scalar_t__ bio_children; int bio_pflags; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_completed; struct bio* bio_parent; } ;

/* Variables and functions */
 int GV_BIO_GROW ; 
 int GV_BIO_SYNCREQ ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gv_plex*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct gv_plex*,struct bio*) ; 

void
FUNC4(struct gv_plex *p, struct bio *bp)
{
	struct bio *pbp;

	pbp = bp->bio_parent;
	if (pbp->bio_error == 0)
		pbp->bio_error = bp->bio_error;
	FUNC0(bp);
	pbp->bio_inbed++;
	if (pbp->bio_children == pbp->bio_inbed) {
		/* Just set it to length since multiple plexes will
		 * screw things up. */
		pbp->bio_completed = pbp->bio_length;
		if (pbp->bio_pflags & GV_BIO_SYNCREQ)
			FUNC3(p, pbp);
		else if (pbp->bio_pflags & GV_BIO_GROW)
			FUNC2(p, pbp);
		else
			FUNC1(pbp, pbp->bio_error);
	}
}