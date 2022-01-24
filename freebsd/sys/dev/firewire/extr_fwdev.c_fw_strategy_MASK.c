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
struct cdev {int dummy; } ;
struct bio {int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_error; struct cdev* bio_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 scalar_t__ FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 

__attribute__((used)) static void
FUNC3(struct bio *bp)
{
	struct cdev *dev;

	dev = bp->bio_dev;
	if (FUNC0(dev)) {
		FUNC2(bp);
		return;
	}

	bp->bio_error = EOPNOTSUPP;
	bp->bio_flags |= BIO_ERROR;
	bp->bio_resid = bp->bio_bcount;
	FUNC1(bp);
}