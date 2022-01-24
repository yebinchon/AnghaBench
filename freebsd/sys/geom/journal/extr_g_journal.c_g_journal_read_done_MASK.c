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
struct bio {scalar_t__ bio_cflags; scalar_t__ bio_inbed; scalar_t__ bio_completed; scalar_t__ bio_length; scalar_t__ bio_error; scalar_t__ bio_children; TYPE_1__* bio_to; struct bio* bio_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ GJ_BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct bio *pbp;

	FUNC1(bp->bio_cflags == GJ_BIO_READ,
	    ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_READ));

	pbp = bp->bio_parent;
	pbp->bio_inbed++;
	pbp->bio_completed += bp->bio_length;

	if (bp->bio_error != 0) {
		if (pbp->bio_error == 0)
			pbp->bio_error = bp->bio_error;
		FUNC0(0, "Error while reading data from %s (error=%d).",
		    bp->bio_to->name, bp->bio_error);
	}
	FUNC2(bp);
	if (pbp->bio_children == pbp->bio_inbed &&
	    pbp->bio_completed == pbp->bio_length) {
		/* We're done. */
		FUNC3(pbp, 0);
	}
}