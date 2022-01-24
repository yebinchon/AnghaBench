#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object {scalar_t__ type; int /*<<< orphan*/  flags; } ;
struct cache_tree {scalar_t__ entry_count; int subtree_nr; TYPE_1__** down; int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  object_names; } ;
struct TYPE_3__ {struct cache_tree* cache_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_REFS ; 
 scalar_t__ OBJ_TREE ; 
 int /*<<< orphan*/  USED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errors_found ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ fsck_walk_options ; 
 int /*<<< orphan*/  FUNC4 (struct object*) ; 
 scalar_t__ name_objects ; 
 int FUNC5 (struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct object* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct cache_tree *it)
{
	int i;
	int err = 0;

	if (verbose)
		FUNC3(stderr, FUNC0("Checking cache tree"));

	if (0 <= it->entry_count) {
		struct object *obj = FUNC7(the_repository, &it->oid);
		if (!obj) {
			FUNC2(FUNC0("%s: invalid sha1 pointer in cache-tree"),
			      FUNC6(&it->oid));
			errors_found |= ERROR_REFS;
			return 1;
		}
		obj->flags |= USED;
		if (name_objects)
			FUNC1(fsck_walk_options.object_names,
				obj, FUNC8(":"));
		FUNC4(obj);
		if (obj->type != OBJ_TREE)
			err |= FUNC5(obj, FUNC0("non-tree in cache-tree"));
	}
	for (i = 0; i < it->subtree_nr; i++)
		err |= FUNC9(it->down[i]->cache_tree);
	return err;
}