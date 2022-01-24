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
struct devstat {int dummy; } ;
struct bio {int /*<<< orphan*/  bio_t0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devstat_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct devstat*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(struct devstat *ds, struct bio *bp)
{

	FUNC3(&devstat_mutex, MA_NOTOWNED);

	/* sanity check */
	if (ds == NULL)
		return;

	FUNC1(&bp->bio_t0);
	FUNC2(ds, &bp->bio_t0);
	FUNC0();
}