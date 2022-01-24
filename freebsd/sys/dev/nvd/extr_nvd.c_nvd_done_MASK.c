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
struct nvme_completion {int dummy; } ;
struct nvd_disk {scalar_t__ cur_depth; scalar_t__ ordered_in_flight; } ;
struct bio {int bio_flags; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct nvd_disk* d_drv1; } ;

/* Variables and functions */
 int BIO_ORDERED ; 
 int NVD_ODEPTH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC5(void *arg, const struct nvme_completion *cpl)
{
	struct bio *bp = (struct bio *)arg;
	struct nvd_disk *ndisk = bp->bio_disk->d_drv1;

	if (FUNC0(bp->bio_flags & BIO_ORDERED)) {
		FUNC1(&ndisk->cur_depth, -NVD_ODEPTH);
		FUNC1(&ndisk->ordered_in_flight, -1);
		FUNC4(&ndisk->cur_depth);
	} else {
		if (FUNC2(&ndisk->cur_depth, -1) == 1 &&
		    FUNC0(ndisk->ordered_in_flight != 0))
			FUNC4(&ndisk->cur_depth);
	}

	FUNC3(bp);
}