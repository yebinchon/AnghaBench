#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,TYPE_1__*,char const*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 struct commit* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC3(const char *arg, struct rev_info *revs, int flags)
{
	struct object_id oid;
	if (FUNC1(arg, &oid) == 0) {
		struct commit *commit = FUNC2(the_repository,
								&oid);
		if (commit) {
			commit->object.flags |= flags;
			FUNC0(revs, &commit->object, arg);
			return 0;
		}
	}
	return -1;
}