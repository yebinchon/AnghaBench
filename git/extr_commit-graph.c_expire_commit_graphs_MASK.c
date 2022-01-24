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
typedef  scalar_t__ timestamp_t ;
struct write_commit_graph_context {char* obj_dir; size_t num_commit_graphs_after; char** commit_graph_filenames_after; int /*<<< orphan*/  split; TYPE_1__* split_opts; } ;
struct strbuf {char* buf; size_t len; } ;
struct stat {scalar_t__ st_mtime; } ;
struct dirent {char* d_name; } ;
struct TYPE_2__ {scalar_t__ expire_time; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,size_t) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(struct write_commit_graph_context *ctx)
{
	struct strbuf path = STRBUF_INIT;
	DIR *dir;
	struct dirent *de;
	size_t dirnamelen;
	timestamp_t expire_time = FUNC10(NULL);

	if (ctx->split_opts && ctx->split_opts->expire_time)
		expire_time -= ctx->split_opts->expire_time;
	if (!ctx->split) {
		char *chain_file_name = FUNC1(ctx->obj_dir);
		FUNC11(chain_file_name);
		FUNC0(chain_file_name);
		ctx->num_commit_graphs_after = 0;
	}

	FUNC6(&path, ctx->obj_dir);
	FUNC6(&path, "/info/commit-graphs");
	dir = FUNC2(path.buf);

	if (!dir)
		goto out;

	FUNC5(&path, '/');
	dirnamelen = path.len;
	while ((de = FUNC3(dir)) != NULL) {
		struct stat st;
		uint32_t i, found = 0;

		FUNC8(&path, dirnamelen);
		FUNC6(&path, de->d_name);

		FUNC4(path.buf, &st);

		if (st.st_mtime > expire_time)
			continue;
		if (path.len < 6 || FUNC9(path.buf + path.len - 6, ".graph"))
			continue;

		for (i = 0; i < ctx->num_commit_graphs_after; i++) {
			if (!FUNC9(ctx->commit_graph_filenames_after[i],
				    path.buf)) {
				found = 1;
				break;
			}
		}

		if (!found)
			FUNC11(path.buf);
	}

out:
	FUNC7(&path);
}