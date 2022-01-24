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
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit*) ; 
 scalar_t__ FUNC1 (struct object_id*) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC3(struct commit **it, struct object_id *oid)
{
	struct commit *commit;

	if (FUNC1(oid))
		return 1;
	commit = FUNC2(the_repository, oid, 1);
	if (!commit)
		return 0;

	/*
	 * Make sure everything in this commit exists.
	 *
	 * We have walked all the objects reachable from the refs
	 * and cache earlier.  The commits reachable by this commit
	 * must meet SEEN commits -- and then we should mark them as
	 * SEEN as well.
	 */
	if (!FUNC0(commit))
		return 0;
	*it = commit;
	return 1;
}