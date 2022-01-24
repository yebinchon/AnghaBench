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
struct rev_info {int dummy; } ;
struct progress {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  expire ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,int,int /*<<< orphan*/ ,struct progress*) ; 
 scalar_t__ show_progress ; 
 struct progress* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct progress**) ; 

__attribute__((used)) static void FUNC4(struct rev_info *revs)
{
	static int initialized;
	struct progress *progress = NULL;

	if (initialized)
		return;

	if (show_progress)
		progress = FUNC2(FUNC0("Checking connectivity"), 0);
	FUNC1(revs, 1, expire, progress);
	FUNC3(&progress);
	initialized = 1;
}