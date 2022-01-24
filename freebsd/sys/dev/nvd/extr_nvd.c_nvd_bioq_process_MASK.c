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
struct nvd_disk {scalar_t__ cur_depth; int /*<<< orphan*/  bioqlock; int /*<<< orphan*/  bioq; } ;
struct bio {int bio_flags; } ;

/* Variables and functions */
 int BIO_ORDERED ; 
 scalar_t__ NVD_ODEPTH ; 
 scalar_t__ FUNC0 (int) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvd_disk*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct nvd_disk *ndisk = arg;
	struct bio *bp;

	for (;;) {
		FUNC2(&ndisk->bioqlock);
		bp = FUNC1(&ndisk->bioq);
		FUNC3(&ndisk->bioqlock);
		if (bp == NULL)
			break;

		if (FUNC0(bp->bio_flags & BIO_ORDERED)) {
			/*
			 * bio with BIO_ORDERED flag set must be executed
			 * after all previous bios.
			 */
			while (ndisk->cur_depth > 0)
				FUNC5(&ndisk->cur_depth, 0, "nvdorb", 1);
		} else {
			/*
			 * bio with BIO_ORDERED flag set must be completed
			 * before proceeding with additional bios.
			 */
			while (ndisk->cur_depth >= NVD_ODEPTH)
				FUNC5(&ndisk->cur_depth, 0, "nvdora", 1);
		}

		FUNC4(ndisk, bp);
	}
}