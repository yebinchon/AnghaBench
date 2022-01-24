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
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_2__ {struct commit_list* next; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct commit*) ; 
 int /*<<< orphan*/  log_tree_opt ; 
 struct commit* FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC6(struct commit *commit, const char *p)
{
	struct object_id oid;
	struct commit_list **pptr = NULL;

	/* Graft the fake parents locally to the commit */
	while (FUNC2(*p++) && !FUNC5(p, &oid, &p)) {
		struct commit *parent = FUNC4(the_repository, &oid);
		if (!pptr) {
			/* Free the real parent list */
			FUNC1(commit->parents);
			commit->parents = NULL;
			pptr = &(commit->parents);
		}
		if (parent) {
			pptr = &FUNC0(parent, pptr)->next;
		}
	}
	return FUNC3(&log_tree_opt, commit);
}