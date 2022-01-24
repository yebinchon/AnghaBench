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
struct ref {TYPE_1__* peer_ref; struct ref* next; } ;
struct branch {int /*<<< orphan*/  refname; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct branch* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ref *ref_map)
{
	struct branch *current_branch = FUNC1(NULL);

	if (FUNC3() || !current_branch)
		return;

	for (; ref_map; ref_map = ref_map->next)
		if (ref_map->peer_ref && !FUNC4(current_branch->refname,
					ref_map->peer_ref->name))
			FUNC2(FUNC0("Refusing to fetch into current branch %s "
			    "of non-bare repository"), current_branch->refname);
}