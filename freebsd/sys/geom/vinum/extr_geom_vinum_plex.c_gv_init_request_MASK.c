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
struct gv_sd {scalar_t__ initialized; int /*<<< orphan*/  name; struct gv_drive* drive_sc; } ;
struct gv_drive {struct g_consumer* consumer; } ;
struct g_consumer {int dummy; } ;
struct bio {struct gv_sd* bio_caller1; void* bio_done; void* bio_offset; int /*<<< orphan*/  bio_pflags; void* bio_length; scalar_t__ bio_error; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_cmd; } ;
typedef  void* off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_WRITE ; 
 int /*<<< orphan*/  GV_BIO_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct bio* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct g_consumer*) ; 
 struct bio* FUNC4 () ; 
 void* gv_done ; 

void
FUNC5(struct gv_sd *s, off_t start, caddr_t data, off_t length)
{
	struct gv_drive *d;
	struct g_consumer *cp;
	struct bio *bp, *cbp;

	FUNC1(s != NULL, ("gv_init_request: NULL s"));
	d = s->drive_sc;
	FUNC1(d != NULL, ("gv_init_request: NULL d"));
	cp = d->consumer;
	FUNC1(cp != NULL, ("gv_init_request: NULL cp"));

	bp = FUNC4();
	if (bp == NULL) {
		FUNC0(0, "subdisk '%s' init: write failed at offset %jd"
		    " (drive offset %jd); out of memory", s->name,
		    (intmax_t)s->initialized, (intmax_t)start);
		return; /* XXX: Error codes. */
	}
	bp->bio_cmd = BIO_WRITE;
	bp->bio_data = data;
	bp->bio_done = gv_done;
	bp->bio_error = 0;
	bp->bio_length = length;
	bp->bio_pflags |= GV_BIO_INIT;
	bp->bio_offset = start;
	bp->bio_caller1 = s;

	/* Then ofcourse, we have to clone it. */
	cbp = FUNC2(bp);
	if (cbp == NULL) {
		FUNC0(0, "subdisk '%s' init: write failed at offset %jd"
		    " (drive offset %jd); out of memory", s->name,
		    (intmax_t)s->initialized, (intmax_t)start);
		return; /* XXX: Error codes. */
	}
	cbp->bio_done = gv_done;
	cbp->bio_caller1 = s;
	/* Send it off to the consumer. */
	FUNC3(cbp, cp);
}