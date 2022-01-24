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
struct g_consumer {TYPE_1__* provider; } ;
struct bio {void* bio_data; scalar_t__ bio_length; scalar_t__ bio_offset; int /*<<< orphan*/ * bio_done; int /*<<< orphan*/  bio_cmd; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_2__ {scalar_t__ sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MAXPHYS ; 
 int FUNC1 (struct bio*,char*) ; 
 struct bio* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct g_consumer*) ; 

int
FUNC5(struct g_consumer *cp, off_t offset, void *ptr, off_t length)
{
	struct bio *bp;
	int error;

	FUNC0(length > 0 && length >= cp->provider->sectorsize &&
	    length <= MAXPHYS, ("g_write_data(): invalid length %jd",
	    (intmax_t)length));

	bp = FUNC2();
	bp->bio_cmd = BIO_WRITE;
	bp->bio_done = NULL;
	bp->bio_offset = offset;
	bp->bio_length = length;
	bp->bio_data = ptr;
	FUNC4(bp, cp);
	error = FUNC1(bp, "gwrite");
	FUNC3(bp);
	return (error);
}