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
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct bio {struct cdev* bio_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* d_strategy ) (struct bio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cdevsw* FUNC1 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct cdevsw *dsw;
	struct cdev *dev;
	int ref;

	dev = bp->bio_dev;
	dsw = FUNC1(dev, &ref);
	if (dsw == NULL) {
		FUNC0(bp, NULL, ENXIO);
		return;
	}
	FUNC3(&Giant);
	dsw->d_gianttrick->d_strategy(bp);
	FUNC4(&Giant);
	FUNC2(dev, ref);
}