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
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MAXPHYS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (struct bio*,char*) ; 
 struct bio* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct g_consumer*) ; 
 void* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

void *
FUNC7(struct g_consumer *cp, off_t offset, off_t length, int *error)
{
	struct bio *bp;
	void *ptr;
	int errorc;

	FUNC0(length > 0 && length >= cp->provider->sectorsize &&
	    length <= MAXPHYS, ("g_read_data(): invalid length %jd",
	    (intmax_t)length));

	bp = FUNC2();
	bp->bio_cmd = BIO_READ;
	bp->bio_done = NULL;
	bp->bio_offset = offset;
	bp->bio_length = length;
	ptr = FUNC6(length, M_WAITOK);
	bp->bio_data = ptr;
	FUNC5(bp, cp);
	errorc = FUNC1(bp, "gread");
	if (error != NULL)
		*error = errorc;
	FUNC3(bp);
	if (errorc) {
		FUNC4(ptr);
		ptr = NULL;
	}
	return (ptr);
}