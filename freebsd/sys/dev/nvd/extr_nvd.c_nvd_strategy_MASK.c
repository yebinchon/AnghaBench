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
struct nvd_disk {scalar_t__ ordered_in_flight; scalar_t__ cur_depth; int /*<<< orphan*/  bioqtask; int /*<<< orphan*/  tq; int /*<<< orphan*/  bioqlock; int /*<<< orphan*/  bioq; } ;
struct bio {int bio_flags; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;

/* Variables and functions */
 int BIO_ORDERED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nvd_disk*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bio *bp)
{
	struct nvd_disk *ndisk = (struct nvd_disk *)bp->bio_disk->d_drv1;

	/*
	 * bio with BIO_ORDERED flag must be executed after all previous
	 * bios in the queue, and before any successive bios.
	 */
	if (FUNC0(bp->bio_flags & BIO_ORDERED)) {
		if (FUNC2(&ndisk->ordered_in_flight, 1) == 0 &&
		    ndisk->cur_depth == 0 && FUNC3(&ndisk->bioq) == NULL) {
			FUNC7(ndisk, bp);
			return;
		}
	} else if (FUNC1(ndisk->ordered_in_flight == 0)) {
		FUNC7(ndisk, bp);
		return;
	}

	/*
	 * There are ordered bios in flight, so we need to submit
	 *  bios through the task queue to enforce ordering.
	 */
	FUNC5(&ndisk->bioqlock);
	FUNC4(&ndisk->bioq, bp);
	FUNC6(&ndisk->bioqlock);
	FUNC8(ndisk->tq, &ndisk->bioqtask);
}