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
typedef  size_t uint32_t ;
struct write_commit_graph_context {size_t obj_dir; int /*<<< orphan*/  progress; scalar_t__ progress_done; scalar_t__ report_progress; } ;
struct string_list {size_t nr; TYPE_1__* items; } ;
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct packed_git {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FOR_EACH_OBJECT_PACK_ORDER ; 
 char* FUNC0 (char*,char*,size_t) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  add_packed_commits ; 
 struct packed_git* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct packed_git*,int /*<<< orphan*/ ,struct write_commit_graph_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct packed_git*) ; 
 scalar_t__ FUNC7 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC14(struct write_commit_graph_context *ctx,
				struct string_list *pack_indexes)
{
	uint32_t i;
	struct strbuf progress_title = STRBUF_INIT;
	struct strbuf packname = STRBUF_INIT;
	int dirlen;

	FUNC10(&packname, "%s/pack/", ctx->obj_dir);
	dirlen = packname.len;
	if (ctx->report_progress) {
		FUNC10(&progress_title,
			    FUNC0("Finding commits for commit graph in %d pack",
			       "Finding commits for commit graph in %d packs",
			       pack_indexes->nr),
			    pack_indexes->nr);
		ctx->progress = FUNC8(progress_title.buf, 0);
		ctx->progress_done = 0;
	}
	for (i = 0; i < pack_indexes->nr; i++) {
		struct packed_git *p;
		FUNC13(&packname, dirlen);
		FUNC11(&packname, pack_indexes->items[i].string);
		p = FUNC2(packname.buf, packname.len, 1);
		if (!p) {
			FUNC4(FUNC1("error adding pack %s"), packname.buf);
			return -1;
		}
		if (FUNC7(p)) {
			FUNC4(FUNC1("error opening index for %s"), packname.buf);
			return -1;
		}
		FUNC5(p, add_packed_commits, ctx,
					FOR_EACH_OBJECT_PACK_ORDER);
		FUNC3(p);
		FUNC6(p);
	}

	FUNC9(&ctx->progress);
	FUNC12(&progress_title);
	FUNC12(&packname);

	return 0;
}