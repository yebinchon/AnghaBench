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
struct repository {int dummy; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int STALE ; 
 struct commit_list* FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 struct commit_list* FUNC2 (struct repository*,struct commit*,int,struct commit**,int /*<<< orphan*/ ) ; 
 struct commit* FUNC3 (struct commit_list**) ; 
 scalar_t__ FUNC4 (struct repository*,struct commit*) ; 

__attribute__((used)) static struct commit_list *FUNC5(struct repository *r,
					    struct commit *one, int n,
					    struct commit **twos)
{
	struct commit_list *list = NULL;
	struct commit_list *result = NULL;
	int i;

	for (i = 0; i < n; i++) {
		if (one == twos[i])
			/*
			 * We do not mark this even with RESULT so we do not
			 * have to clean it up.
			 */
			return FUNC0(one, &result);
	}

	if (FUNC4(r, one))
		return NULL;
	for (i = 0; i < n; i++) {
		if (FUNC4(r, twos[i]))
			return NULL;
	}

	list = FUNC2(r, one, n, twos, 0);

	while (list) {
		struct commit *commit = FUNC3(&list);
		if (!(commit->object.flags & STALE))
			FUNC1(commit, &result);
	}
	return result;
}