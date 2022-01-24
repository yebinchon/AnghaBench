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
 int PRUNE_PACKED_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  prune_object ; 
 int /*<<< orphan*/  prune_subdir ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(int opts)
{
	if (opts & PRUNE_PACKED_VERBOSE)
		progress = FUNC4(FUNC0("Removing duplicate objects"), 256);

	FUNC2(FUNC3(),
				      prune_object, NULL, prune_subdir, &opts);

	/* Ensure we show 100% before finishing progress */
	FUNC1(progress, 256);
	FUNC5(&progress);
}