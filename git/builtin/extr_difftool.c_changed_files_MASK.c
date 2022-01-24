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
struct strbuf {char* buf; } ;
struct path_entry {int /*<<< orphan*/  entry; } ;
struct hashmap {int dummy; } ;
struct child_process {int no_stdin; int no_stdout; int no_stderr; int git_cmd; int clean_on_exit; char const* dir; char const** env; int out; scalar_t__ use_shell; int /*<<< orphan*/  args; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct path_entry*,int /*<<< orphan*/ ,char*) ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,char*,char const*,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC9 (struct child_process*) ; 
 scalar_t__ FUNC10 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * FUNC15 (int,char*) ; 

__attribute__((used)) static void FUNC16(struct hashmap *result, const char *index_path,
			  const char *workdir)
{
	struct child_process update_index = CHILD_PROCESS_INIT;
	struct child_process diff_files = CHILD_PROCESS_INIT;
	struct strbuf index_env = STRBUF_INIT, buf = STRBUF_INIT;
	const char *git_dir = FUNC1(FUNC6()), *env[] = {
		NULL, NULL
	};
	FILE *fp;

	FUNC11(&index_env, "GIT_INDEX_FILE=%s", index_path);
	env[0] = index_env.buf;

	FUNC2(&update_index.args,
			 "--git-dir", git_dir, "--work-tree", workdir,
			 "update-index", "--really-refresh", "-q",
			 "--unmerged", NULL);
	update_index.no_stdin = 1;
	update_index.no_stdout = 1;
	update_index.no_stderr = 1;
	update_index.git_cmd = 1;
	update_index.use_shell = 0;
	update_index.clean_on_exit = 1;
	update_index.dir = workdir;
	update_index.env = env;
	/* Ignore any errors of update-index */
	FUNC9(&update_index);

	FUNC2(&diff_files.args,
			 "--git-dir", git_dir, "--work-tree", workdir,
			 "diff-files", "--name-only", "-z", NULL);
	diff_files.no_stdin = 1;
	diff_files.git_cmd = 1;
	diff_files.use_shell = 0;
	diff_files.clean_on_exit = 1;
	diff_files.out = -1;
	diff_files.dir = workdir;
	diff_files.env = env;
	if (FUNC10(&diff_files))
		FUNC3("could not obtain raw diff");
	fp = FUNC15(diff_files.out, "r");
	while (!FUNC12(&buf, fp)) {
		struct path_entry *entry;
		FUNC0(entry, path, buf.buf);
		FUNC8(&entry->entry, FUNC14(buf.buf));
		FUNC7(result, &entry->entry);
	}
	FUNC4(fp);
	if (FUNC5(&diff_files))
		FUNC3("diff-files did not exit properly");
	FUNC13(&index_env);
	FUNC13(&buf);
}