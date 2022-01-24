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
struct bio {int bio_error; scalar_t__ bio_completed; scalar_t__ bio_length; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct bio*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct bio *bp, off_t bytes, int error)
{

	FUNC2(G_T_TOPOLOGY, "g_bde_contribute bp %p bytes %jd error %d",
	     bp, (intmax_t)bytes, error);
	if (bp->bio_error == 0)
		bp->bio_error = error;
	bp->bio_completed += bytes;
	FUNC0(bp->bio_completed <= bp->bio_length, ("Too large contribution"));
	if (bp->bio_completed == bp->bio_length) {
		if (bp->bio_error != 0)
			bp->bio_completed = 0;
		FUNC1(bp, bp->bio_error);
	}
}