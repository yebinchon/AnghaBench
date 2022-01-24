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
struct TYPE_3__ {int nr; int /*<<< orphan*/ * list; } ;
struct write_commit_graph_context {void* progress; TYPE_1__ oids; int /*<<< orphan*/  r; scalar_t__ report_progress; scalar_t__ split; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct commit {scalar_t__ graph_pos; TYPE_2__ object; } ;

/* Variables and functions */
 scalar_t__ COMMIT_NOT_FROM_GRAPH ; 
 int /*<<< orphan*/  REACHABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct write_commit_graph_context*,struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 

__attribute__((used)) static void FUNC8(struct write_commit_graph_context *ctx)
{
	int i;
	struct commit *commit;

	if (ctx->report_progress)
		ctx->progress = FUNC6(
					FUNC0("Loading known commits in commit graph"),
					ctx->oids.nr);
	for (i = 0; i < ctx->oids.nr; i++) {
		FUNC2(ctx->progress, i + 1);
		commit = FUNC3(ctx->r, &ctx->oids.list[i]);
		if (commit)
			commit->object.flags |= REACHABLE;
	}
	FUNC7(&ctx->progress);

	/*
	 * As this loop runs, ctx->oids.nr may grow, but not more
	 * than the number of missing commits in the reachable
	 * closure.
	 */
	if (ctx->report_progress)
		ctx->progress = FUNC6(
					FUNC0("Expanding reachable commits in commit graph"),
					0);
	for (i = 0; i < ctx->oids.nr; i++) {
		FUNC2(ctx->progress, i + 1);
		commit = FUNC3(ctx->r, &ctx->oids.list[i]);

		if (!commit)
			continue;
		if (ctx->split) {
			if (!FUNC4(commit) &&
			    commit->graph_pos == COMMIT_NOT_FROM_GRAPH)
				FUNC1(ctx, commit);
		} else if (!FUNC5(commit))
			FUNC1(ctx, commit);
	}
	FUNC7(&ctx->progress);

	if (ctx->report_progress)
		ctx->progress = FUNC6(
					FUNC0("Clearing commit marks in commit graph"),
					ctx->oids.nr);
	for (i = 0; i < ctx->oids.nr; i++) {
		FUNC2(ctx->progress, i + 1);
		commit = FUNC3(ctx->r, &ctx->oids.list[i]);

		if (commit)
			commit->object.flags &= ~REACHABLE;
	}
	FUNC7(&ctx->progress);
}