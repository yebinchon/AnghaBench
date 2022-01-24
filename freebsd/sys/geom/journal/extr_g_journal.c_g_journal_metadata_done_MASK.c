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
struct bio {scalar_t__ bio_error; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bio *bp)
{

	/*
	 * There is not much we can do on error except informing about it.
	 */
	if (bp->bio_error != 0) {
		FUNC0(0, bp, "Cannot update metadata (error=%d).",
		    bp->bio_error);
	} else {
		FUNC0(2, bp, "Metadata updated.");
	}
	FUNC2(bp->bio_data, bp->bio_length);
	FUNC1(bp);
}