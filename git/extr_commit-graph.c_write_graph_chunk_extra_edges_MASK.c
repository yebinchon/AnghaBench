#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  nr; struct commit** list; } ;
struct write_commit_graph_context {int /*<<< orphan*/  new_base_graph; scalar_t__ new_num_commits_in_base; TYPE_1__ commits; int /*<<< orphan*/  progress_cnt; int /*<<< orphan*/  progress; } ;
struct hashfile {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_5__* item; } ;
struct TYPE_9__ {int /*<<< orphan*/  hash; } ;
struct TYPE_8__ {TYPE_4__ oid; } ;
struct commit {TYPE_3__ object; struct commit_list* parents; } ;
struct TYPE_7__ {TYPE_4__ oid; } ;
struct TYPE_10__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GRAPH_LAST_EDGE ; 
 int /*<<< orphan*/  commit_to_sha1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashfile*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct commit**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hashfile *f,
					  struct write_commit_graph_context *ctx)
{
	struct commit **list = ctx->commits.list;
	struct commit **last = ctx->commits.list + ctx->commits.nr;
	struct commit_list *parent;

	while (list < last) {
		int num_parents = 0;

		FUNC1(ctx->progress, ++ctx->progress_cnt);

		for (parent = (*list)->parents; num_parents < 3 && parent;
		     parent = parent->next)
			num_parents++;

		if (num_parents <= 2) {
			list++;
			continue;
		}

		/* Since num_parents > 2, this initializer is safe. */
		for (parent = (*list)->parents->next; parent; parent = parent->next) {
			int edge_value = FUNC5(parent->item->object.oid.hash,
						  ctx->commits.list,
						  ctx->commits.nr,
						  commit_to_sha1);

			if (edge_value >= 0)
				edge_value += ctx->new_num_commits_in_base;
			else {
				uint32_t pos;
				if (FUNC2(parent->item,
							 ctx->new_base_graph,
							 &pos))
					edge_value = pos;
			}

			if (edge_value < 0)
				FUNC0("missing parent %s for commit %s",
				    FUNC4(&parent->item->object.oid),
				    FUNC4(&(*list)->object.oid));
			else if (!parent->next)
				edge_value |= GRAPH_LAST_EDGE;

			FUNC3(f, edge_value);
		}

		list++;
	}
}