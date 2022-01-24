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
struct nvd_disk {scalar_t__ cur_depth; scalar_t__ ordered_in_flight; int /*<<< orphan*/  ns; } ;
struct bio {int bio_flags; int bio_error; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; int /*<<< orphan*/ * bio_driver1; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 int BIO_ORDERED ; 
 int NVD_ODEPTH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  nvd_done ; 
 int FUNC4 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC6(struct nvd_disk *ndisk, struct bio *bp)
{
	int err;

	bp->bio_driver1 = NULL;
	if (FUNC0(bp->bio_flags & BIO_ORDERED))
		FUNC1(&ndisk->cur_depth, NVD_ODEPTH);
	else
		FUNC1(&ndisk->cur_depth, 1);
	err = FUNC4(ndisk->ns, bp, nvd_done);
	if (err) {
		if (FUNC0(bp->bio_flags & BIO_ORDERED)) {
			FUNC1(&ndisk->cur_depth, -NVD_ODEPTH);
			FUNC1(&ndisk->ordered_in_flight, -1);
			FUNC5(&ndisk->cur_depth);
		} else {
			if (FUNC2(&ndisk->cur_depth, -1) == 1 &&
			    FUNC0(ndisk->ordered_in_flight != 0))
				FUNC5(&ndisk->cur_depth);
		}
		bp->bio_error = err;
		bp->bio_flags |= BIO_ERROR;
		bp->bio_resid = bp->bio_bcount;
		FUNC3(bp);
	}
}