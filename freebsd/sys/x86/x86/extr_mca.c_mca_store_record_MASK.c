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
struct mca_internal {int dummy; } ;

/* Variables and functions */
 struct mca_internal* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mca_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ mca_count ; 
 int /*<<< orphan*/  mca_freecount ; 
 int /*<<< orphan*/  mca_freelist ; 
 scalar_t__ mca_maxcount ; 
 int /*<<< orphan*/  mca_records ; 

__attribute__((used)) static void
FUNC3(struct mca_internal *mca)
{

	/*
	 * If we are storing no records (mca_maxcount == 0),
	 * we just free this record.
	 *
	 * If we are storing records (mca_maxcount != 0) and
	 * we have free space on the list, store the record
	 * and increment mca_count.
	 *
	 * If we are storing records and we do not have free
	 * space on the list, store the new record at the
	 * tail and free the oldest one from the head.
	 */
	if (mca_maxcount != 0)
		FUNC1(&mca_records, mca, link);
	if (mca_maxcount < 0 || mca_count < mca_maxcount)
		mca_count++;
	else {
		if (mca_maxcount != 0) {
			mca = FUNC0(&mca_records);
			FUNC2(&mca_records, link);
		}
		FUNC1(&mca_freelist, mca, link);
		mca_freecount++;
	}
}