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
struct TYPE_5__ {int nr; int /*<<< orphan*/ * list; int /*<<< orphan*/  alloc; } ;
struct write_commit_graph_context {int /*<<< orphan*/  progress; scalar_t__ check_oids; TYPE_2__ oids; int /*<<< orphan*/  r; scalar_t__ report_progress; } ;
struct string_list {int nr; TYPE_3__* items; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct commit* FUNC5 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 

__attribute__((used)) static int FUNC12(struct write_commit_graph_context *ctx,
				     struct string_list *commit_hex)
{
	uint32_t i;
	struct strbuf progress_title = STRBUF_INIT;

	if (ctx->report_progress) {
		FUNC10(&progress_title,
			    FUNC1("Finding commits for commit graph from %d ref",
			       "Finding commits for commit graph from %d refs",
			       commit_hex->nr),
			    commit_hex->nr);
		ctx->progress = FUNC8(
					progress_title.buf,
					commit_hex->nr);
	}
	for (i = 0; i < commit_hex->nr; i++) {
		const char *end;
		struct object_id oid;
		struct commit *result;

		FUNC3(ctx->progress, i + 1);
		if (!FUNC7(commit_hex->items[i].string, &oid, &end) &&
		    (result = FUNC5(ctx->r, &oid, 1))) {
			FUNC0(ctx->oids.list, ctx->oids.nr + 1, ctx->oids.alloc);
			FUNC6(&ctx->oids.list[ctx->oids.nr], &(result->object.oid));
			ctx->oids.nr++;
		} else if (ctx->check_oids) {
			FUNC4(FUNC2("invalid commit object id: %s"),
			    commit_hex->items[i].string);
			return -1;
		}
	}
	FUNC9(&ctx->progress);
	FUNC11(&progress_title);

	return 0;
}