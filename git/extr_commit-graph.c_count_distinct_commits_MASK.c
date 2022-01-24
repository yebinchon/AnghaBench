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
typedef  int uint32_t ;
struct TYPE_2__ {int nr; int /*<<< orphan*/ * list; } ;
struct write_commit_graph_context {int /*<<< orphan*/  progress; TYPE_1__ oids; int /*<<< orphan*/  r; scalar_t__ split; scalar_t__ report_progress; } ;
struct commit {scalar_t__ graph_pos; } ;

/* Variables and functions */
 scalar_t__ COMMIT_NOT_FROM_GRAPH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  oid_compare ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC7(struct write_commit_graph_context *ctx)
{
	uint32_t i, count_distinct = 1;

	if (ctx->report_progress)
		ctx->progress = FUNC5(
			FUNC1("Counting distinct commits in commit graph"),
			ctx->oids.nr);
	FUNC2(ctx->progress, 0); /* TODO: Measure QSORT() progress */
	FUNC0(ctx->oids.list, ctx->oids.nr, oid_compare);

	for (i = 1; i < ctx->oids.nr; i++) {
		FUNC2(ctx->progress, i + 1);
		if (!FUNC4(&ctx->oids.list[i - 1], &ctx->oids.list[i])) {
			if (ctx->split) {
				struct commit *c = FUNC3(ctx->r, &ctx->oids.list[i]);

				if (!c || c->graph_pos != COMMIT_NOT_FROM_GRAPH)
					continue;
			}

			count_distinct++;
		}
	}
	FUNC6(&ctx->progress);

	return count_distinct;
}