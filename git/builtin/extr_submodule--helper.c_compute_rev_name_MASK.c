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
struct strbuf {int dummy; } ;
struct child_process {char const* dir; int git_cmd; int no_stderr; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct child_process*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 

__attribute__((used)) static char *FUNC7(const char *sub_path, const char* object_id)
{
	struct strbuf sb = STRBUF_INIT;
	const char ***d;

	static const char *describe_bare[] = { NULL };

	static const char *describe_tags[] = { "--tags", NULL };

	static const char *describe_contains[] = { "--contains", NULL };

	static const char *describe_all_always[] = { "--all", "--always", NULL };

	static const char **describe_argv[] = { describe_bare, describe_tags,
						describe_contains,
						describe_all_always, NULL };

	for (d = describe_argv; *d; d++) {
		struct child_process cp = CHILD_PROCESS_INIT;
		FUNC3(&cp.env_array);
		cp.dir = sub_path;
		cp.git_cmd = 1;
		cp.no_stderr = 1;

		FUNC0(&cp.args, "describe");
		FUNC1(&cp.args, *d);
		FUNC0(&cp.args, object_id);

		if (!FUNC2(&cp, &sb, 0)) {
			FUNC6(&sb, "\n");
			return FUNC4(&sb, NULL);
		}
	}

	FUNC5(&sb);
	return NULL;
}