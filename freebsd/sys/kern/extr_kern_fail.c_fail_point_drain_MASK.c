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
struct fail_point_setting {int dummy; } ;
struct fail_point {int fp_ref_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fail_point*) ; 
 int /*<<< orphan*/  PWAIT ; 
 struct fail_point_setting* FUNC1 (struct fail_point*,struct fail_point_setting*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct fail_point**,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct fail_point *fp, int expected_ref)
{
	struct fail_point_setting *entries;

	entries = FUNC1(fp, NULL);
	/**
	 * We have unpaused all threads; so we will wait no longer
	 * than the time taken for the longest remaining sleep, or
	 * the length of time of a long-running code block.
	 */
	while (fp->fp_ref_cnt > expected_ref) {
		FUNC3(FUNC0(fp));
		FUNC2(&fp, PWAIT, "fail_point_drain", hz / 100);
	}
	FUNC1(fp, entries);
}