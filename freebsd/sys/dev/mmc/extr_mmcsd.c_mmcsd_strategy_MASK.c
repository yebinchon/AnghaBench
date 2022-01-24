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
struct mmcsd_part {scalar_t__ running; scalar_t__ suspend; int /*<<< orphan*/  bio_queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct mmcsd_part* d_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmcsd_part*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmcsd_part*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct mmcsd_part *part;

	part = bp->bio_disk->d_drv1;
	FUNC0(part);
	if (part->running > 0 || part->suspend > 0) {
		FUNC3(&part->bio_queue, bp);
		FUNC1(part);
		FUNC4(part);
	} else {
		FUNC1(part);
		FUNC2(bp, NULL, ENXIO);
	}
}