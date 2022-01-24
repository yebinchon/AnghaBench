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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct object_array {int nr; TYPE_2__* objects; } ;
struct object {unsigned int flags; scalar_t__ type; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_3__ {unsigned int flags; } ;
struct commit {scalar_t__ generation; scalar_t__ date; TYPE_1__ object; struct commit_list* parents; } ;
struct TYPE_4__ {struct object* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit**,int) ; 
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC1 (struct commit**,int,int /*<<< orphan*/ ) ; 
 unsigned int RESULT ; 
 int /*<<< orphan*/  FUNC2 (int,struct commit**,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  compare_commits_by_gen ; 
 struct object* FUNC4 (int /*<<< orphan*/ ,struct object*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct commit**) ; 
 scalar_t__ FUNC6 (struct commit*) ; 
 int /*<<< orphan*/  FUNC7 (struct commit_list**) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC8(struct object_array *from,
				 unsigned int with_flag,
				 unsigned int assign_flag,
				 time_t min_commit_date,
				 uint32_t min_generation)
{
	struct commit **list = NULL;
	int i;
	int nr_commits;
	int result = 1;

	FUNC0(list, from->nr);
	nr_commits = 0;
	for (i = 0; i < from->nr; i++) {
		struct object *from_one = from->objects[i].item;

		if (!from_one || from_one->flags & assign_flag)
			continue;

		from_one = FUNC4(the_repository, from_one,
				     "a from object", 0);
		if (!from_one || from_one->type != OBJ_COMMIT) {
			/*
			 * no way to tell if this is reachable by
			 * looking at the ancestry chain alone, so
			 * leave a note to ourselves not to worry about
			 * this object anymore.
			 */
			from->objects[i].item->flags |= assign_flag;
			continue;
		}

		list[nr_commits] = (struct commit *)from_one;
		if (FUNC6(list[nr_commits]) ||
		    list[nr_commits]->generation < min_generation) {
			result = 0;
			goto cleanup;
		}

		nr_commits++;
	}

	FUNC1(list, nr_commits, compare_commits_by_gen);

	for (i = 0; i < nr_commits; i++) {
		/* DFS from list[i] */
		struct commit_list *stack = NULL;

		list[i]->object.flags |= assign_flag;
		FUNC3(list[i], &stack);

		while (stack) {
			struct commit_list *parent;

			if (stack->item->object.flags & (with_flag | RESULT)) {
				FUNC7(&stack);
				if (stack)
					stack->item->object.flags |= RESULT;
				continue;
			}

			for (parent = stack->item->parents; parent; parent = parent->next) {
				if (parent->item->object.flags & (with_flag | RESULT))
					stack->item->object.flags |= RESULT;

				if (!(parent->item->object.flags & assign_flag)) {
					parent->item->object.flags |= assign_flag;

					if (FUNC6(parent->item) ||
					    parent->item->date < min_commit_date ||
					    parent->item->generation < min_generation)
						continue;

					FUNC3(parent->item, &stack);
					break;
				}
			}

			if (!parent)
				FUNC7(&stack);
		}

		if (!(list[i]->object.flags & (with_flag | RESULT))) {
			result = 0;
			goto cleanup;
		}
	}

cleanup:
	FUNC2(nr_commits, list, RESULT | assign_flag);
	FUNC5(list);

	for (i = 0; i < from->nr; i++)
		from->objects[i].item->flags &= ~assign_flag;

	return result;
}