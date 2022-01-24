#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int nr; TYPE_3__** list; } ;
struct write_commit_graph_context {int /*<<< orphan*/  progress; scalar_t__ num_extra_edges; TYPE_2__ commits; scalar_t__ report_progress; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {int /*<<< orphan*/  parents; TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  commit_compare ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct write_commit_graph_context *ctx)
{
	uint32_t i;

	if (ctx->report_progress)
		ctx->progress = FUNC7(
					FUNC1("Scanning merged commits"),
					ctx->commits.nr);

	FUNC0(ctx->commits.list, ctx->commits.nr, commit_compare);

	ctx->num_extra_edges = 0;
	for (i = 0; i < ctx->commits.nr; i++) {
		FUNC4(ctx->progress, i);

		if (i && FUNC6(&ctx->commits.list[i - 1]->object.oid,
			  &ctx->commits.list[i]->object.oid)) {
			FUNC3(FUNC1("unexpected duplicate commit id %s"),
			    FUNC5(&ctx->commits.list[i]->object.oid));
		} else {
			unsigned int num_parents;

			num_parents = FUNC2(ctx->commits.list[i]->parents);
			if (num_parents > 2)
				ctx->num_extra_edges += num_parents - 1;
		}
	}

	FUNC8(&ctx->progress);
}