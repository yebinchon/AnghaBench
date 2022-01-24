#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int nr; TYPE_3__** list; int /*<<< orphan*/  alloc; } ;
struct TYPE_6__ {int nr; int /*<<< orphan*/ * list; } ;
struct write_commit_graph_context {int /*<<< orphan*/  progress; TYPE_2__ commits; scalar_t__ num_extra_edges; scalar_t__ split; TYPE_1__ oids; int /*<<< orphan*/  r; scalar_t__ report_progress; } ;
struct TYPE_8__ {scalar_t__ graph_pos; int /*<<< orphan*/  parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ COMMIT_NOT_FROM_GRAPH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct write_commit_graph_context *ctx)
{
	uint32_t i;

	ctx->num_extra_edges = 0;
	if (ctx->report_progress)
		ctx->progress = FUNC7(
			FUNC1("Finding extra edges in commit graph"),
			ctx->oids.nr);
	for (i = 0; i < ctx->oids.nr; i++) {
		unsigned int num_parents;

		FUNC3(ctx->progress, i + 1);
		if (i > 0 && FUNC5(&ctx->oids.list[i - 1], &ctx->oids.list[i]))
			continue;

		FUNC0(ctx->commits.list, ctx->commits.nr + 1, ctx->commits.alloc);
		ctx->commits.list[ctx->commits.nr] = FUNC4(ctx->r, &ctx->oids.list[i]);

		if (ctx->split &&
		    ctx->commits.list[ctx->commits.nr]->graph_pos != COMMIT_NOT_FROM_GRAPH)
			continue;

		FUNC6(ctx->commits.list[ctx->commits.nr]);

		num_parents = FUNC2(ctx->commits.list[ctx->commits.nr]->parents);
		if (num_parents > 2)
			ctx->num_extra_edges += num_parents - 1;

		ctx->commits.nr++;
	}
	FUNC8(&ctx->progress);
}