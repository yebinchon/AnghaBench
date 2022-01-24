#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct object_array {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ date; scalar_t__ generation; TYPE_3__ object; } ;

/* Variables and functions */
 scalar_t__ GENERATION_NUMBER_INFINITY ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 int /*<<< orphan*/  PARENT1 ; 
 int /*<<< orphan*/  PARENT2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,struct object_array*) ; 
 int FUNC1 (struct object_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(struct commit_list *from, struct commit_list *to,
		       int cutoff_by_min_date)
{
	struct object_array from_objs = OBJECT_ARRAY_INIT;
	time_t min_commit_date = cutoff_by_min_date ? from->item->date : 0;
	struct commit_list *from_iter = from, *to_iter = to;
	int result;
	uint32_t min_generation = GENERATION_NUMBER_INFINITY;

	while (from_iter) {
		FUNC0(&from_iter->item->object, NULL, &from_objs);

		if (!FUNC4(from_iter->item)) {
			if (from_iter->item->date < min_commit_date)
				min_commit_date = from_iter->item->date;

			if (from_iter->item->generation < min_generation)
				min_generation = from_iter->item->generation;
		}

		from_iter = from_iter->next;
	}

	while (to_iter) {
		if (!FUNC4(to_iter->item)) {
			if (to_iter->item->date < min_commit_date)
				min_commit_date = to_iter->item->date;

			if (to_iter->item->generation < min_generation)
				min_generation = to_iter->item->generation;
		}

		to_iter->item->object.flags |= PARENT2;

		to_iter = to_iter->next;
	}

	result = FUNC1(&from_objs, PARENT2, PARENT1,
					      min_commit_date, min_generation);

	while (from) {
		FUNC2(from->item, PARENT1);
		from = from->next;
	}

	while (to) {
		FUNC2(to->item, PARENT2);
		to = to->next;
	}

	FUNC3(&from_objs);
	return result;
}