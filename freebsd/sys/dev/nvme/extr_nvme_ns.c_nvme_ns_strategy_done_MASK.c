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
struct nvme_completion {int dummy; } ;
struct bio {scalar_t__ bio_resid; scalar_t__ bio_bcount; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct nvme_completion const*) ; 

__attribute__((used)) static void
FUNC2(void *arg, const struct nvme_completion *cpl)
{
	struct bio *bp = arg;

	/*
	 * TODO: add more extensive translation of NVMe status codes
	 *  to different bio error codes (i.e. EIO, EINVAL, etc.)
	 */
	if (FUNC1(cpl)) {
		bp->bio_error = EIO;
		bp->bio_flags |= BIO_ERROR;
		bp->bio_resid = bp->bio_bcount;
	} else
		bp->bio_resid = 0;

	FUNC0(bp);
}