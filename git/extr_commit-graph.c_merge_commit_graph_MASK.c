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
struct TYPE_2__ {scalar_t__ nr; struct commit** list; int /*<<< orphan*/  alloc; } ;
struct write_commit_graph_context {TYPE_1__ commits; int /*<<< orphan*/  r; int /*<<< orphan*/  progress; } ;
struct object_id {int dummy; } ;
struct commit_graph {scalar_t__ num_commits_in_base; scalar_t__ num_commits; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_graph*,scalar_t__,struct object_id*) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,struct object_id*,int) ; 

__attribute__((used)) static void FUNC4(struct write_commit_graph_context *ctx,
			       struct commit_graph *g)
{
	uint32_t i;
	uint32_t offset = g->num_commits_in_base;

	FUNC0(ctx->commits.list, ctx->commits.nr + g->num_commits, ctx->commits.alloc);

	for (i = 0; i < g->num_commits; i++) {
		struct object_id oid;
		struct commit *result;

		FUNC1(ctx->progress, i + 1);

		FUNC2(g, i + offset, &oid);

		/* only add commits if they still exist in the repo */
		result = FUNC3(ctx->r, &oid, 1);

		if (result) {
			ctx->commits.list[ctx->commits.nr] = result;
			ctx->commits.nr++;
		}
	}
}