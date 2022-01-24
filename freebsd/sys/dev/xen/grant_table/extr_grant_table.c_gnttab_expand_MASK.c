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

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GREFS_PER_GRANT_FRAME ; 
 int FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 () ; 
 unsigned int nr_grant_frames ; 

__attribute__((used)) static int
FUNC4(unsigned int req_entries)
{
	int error;
	unsigned int cur, extra;

	cur = nr_grant_frames;
	extra = FUNC2(req_entries, GREFS_PER_GRANT_FRAME);
	if (cur + extra > FUNC3())
		return (ENOSPC);

	error = FUNC0(cur, cur + extra - 1);
	if (!error)
		error = FUNC1(extra);

	return (error);
}