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
struct TYPE_2__ {unsigned long tree_size; void* tree_data; int /*<<< orphan*/  oid; } ;
struct pbase_tree {TYPE_1__ pcache; struct pbase_tree* next; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  num_preferred_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct object_id*) ; 
 struct pbase_tree* pbase_tree ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ ,unsigned long*,struct object_id*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  tree_type ; 
 scalar_t__ window ; 
 struct pbase_tree* FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct object_id *oid)
{
	struct pbase_tree *it;
	void *data;
	unsigned long size;
	struct object_id tree_oid;

	if (window <= num_preferred_base++)
		return;

	data = FUNC3(the_repository, oid,
					  tree_type, &size, &tree_oid);
	if (!data)
		return;

	for (it = pbase_tree; it; it = it->next) {
		if (FUNC2(&it->pcache.oid, &tree_oid)) {
			FUNC0(data);
			return;
		}
	}

	it = FUNC4(1, sizeof(*it));
	it->next = pbase_tree;
	pbase_tree = it;

	FUNC1(&it->pcache.oid, &tree_oid);
	it->pcache.tree_data = data;
	it->pcache.tree_size = size;
}