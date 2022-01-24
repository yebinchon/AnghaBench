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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int nr; struct commit** list; } ;
struct write_commit_graph_context {int /*<<< orphan*/  progress; TYPE_1__ commits; scalar_t__ report_progress; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {scalar_t__ generation; struct commit_list* parents; } ;

/* Variables and functions */
 scalar_t__ GENERATION_NUMBER_INFINITY ; 
 scalar_t__ GENERATION_NUMBER_MAX ; 
 scalar_t__ GENERATION_NUMBER_ZERO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_list**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct write_commit_graph_context *ctx)
{
	int i;
	struct commit_list *list = NULL;

	if (ctx->report_progress)
		ctx->progress = FUNC4(
					FUNC0("Computing commit graph generation numbers"),
					ctx->commits.nr);
	for (i = 0; i < ctx->commits.nr; i++) {
		FUNC2(ctx->progress, i + 1);
		if (ctx->commits.list[i]->generation != GENERATION_NUMBER_INFINITY &&
		    ctx->commits.list[i]->generation != GENERATION_NUMBER_ZERO)
			continue;

		FUNC1(ctx->commits.list[i], &list);
		while (list) {
			struct commit *current = list->item;
			struct commit_list *parent;
			int all_parents_computed = 1;
			uint32_t max_generation = 0;

			for (parent = current->parents; parent; parent = parent->next) {
				if (parent->item->generation == GENERATION_NUMBER_INFINITY ||
				    parent->item->generation == GENERATION_NUMBER_ZERO) {
					all_parents_computed = 0;
					FUNC1(parent->item, &list);
					break;
				} else if (parent->item->generation > max_generation) {
					max_generation = parent->item->generation;
				}
			}

			if (all_parents_computed) {
				current->generation = max_generation + 1;
				FUNC3(&list);

				if (current->generation > GENERATION_NUMBER_MAX)
					current->generation = GENERATION_NUMBER_MAX;
			}
		}
	}
	FUNC5(&ctx->progress);
}