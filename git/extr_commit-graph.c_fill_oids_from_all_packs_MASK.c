#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct write_commit_graph_context {scalar_t__ approx_nr_objects; scalar_t__ progress_done; int /*<<< orphan*/  progress; scalar_t__ report_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOR_EACH_OBJECT_PACK_ORDER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  add_packed_commits ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct write_commit_graph_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct write_commit_graph_context *ctx)
{
	if (ctx->report_progress)
		ctx->progress = FUNC3(
			FUNC0("Finding commits for commit graph among packed objects"),
			ctx->approx_nr_objects);
	FUNC2(add_packed_commits, ctx,
			       FOR_EACH_OBJECT_PACK_ORDER);
	if (ctx->progress_done < ctx->approx_nr_objects)
		FUNC1(ctx->progress, ctx->approx_nr_objects);
	FUNC4(&ctx->progress);
}