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
struct write_commit_graph_context {scalar_t__ num_commit_graphs_before; scalar_t__ num_commit_graphs_after; struct commit_graph* new_base_graph; int /*<<< orphan*/  base_graph_name; scalar_t__ new_num_commits_in_base; int /*<<< orphan*/  progress; scalar_t__ report_progress; TYPE_2__* r; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct commit_graph {int /*<<< orphan*/  filename; scalar_t__ num_commits_in_base; scalar_t__ num_commits; struct commit_graph* base_graph; } ;
struct TYPE_4__ {TYPE_1__* objects; } ;
struct TYPE_3__ {struct commit_graph* commit_graph; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct write_commit_graph_context*,struct commit_graph*) ; 
 int /*<<< orphan*/  FUNC2 (struct write_commit_graph_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct write_commit_graph_context *ctx)
{
	struct commit_graph *g = ctx->r->objects->commit_graph;
	uint32_t current_graph_number = ctx->num_commit_graphs_before;
	struct strbuf progress_title = STRBUF_INIT;

	while (g && current_graph_number >= ctx->num_commit_graphs_after) {
		current_graph_number--;

		if (ctx->report_progress) {
			FUNC5(&progress_title, FUNC0("Merging commit-graph"));
			ctx->progress = FUNC3(progress_title.buf, 0);
		}

		FUNC1(ctx, g);
		FUNC4(&ctx->progress);
		FUNC6(&progress_title);

		g = g->base_graph;
	}

	if (g) {
		ctx->new_base_graph = g;
		ctx->new_num_commits_in_base = g->num_commits + g->num_commits_in_base;
	}

	if (ctx->new_base_graph)
		ctx->base_graph_name = FUNC7(ctx->new_base_graph->filename);

	FUNC2(ctx);
}