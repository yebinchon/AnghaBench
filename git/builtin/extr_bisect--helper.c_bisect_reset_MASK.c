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
struct strbuf {char const* buf; } ;
struct object_id {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*,char const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*) ; 
 int FUNC12 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 

__attribute__((used)) static int FUNC15(const char *commit)
{
	struct strbuf branch = STRBUF_INIT;

	if (!commit) {
		if (FUNC12(&branch, FUNC8(), 0) < 1) {
			FUNC9(FUNC0("We are not bisecting.\n"));
			return 0;
		}
		FUNC14(&branch);
	} else {
		struct object_id oid;

		if (FUNC6(commit, &oid))
			return FUNC4(FUNC0("'%s' is not a valid commit"), commit);
		FUNC11(&branch, commit);
	}

	if (!FUNC5(FUNC7())) {
		struct argv_array argv = ARGV_ARRAY_INIT;

		FUNC2(&argv, "checkout", branch.buf, "--", NULL);
		if (FUNC10(argv.argv, RUN_GIT_CMD)) {
			FUNC13(&branch);
			FUNC1(&argv);
			return FUNC4(FUNC0("could not check out original"
				       " HEAD '%s'. Try 'git bisect"
				       " reset <commit>'."), branch.buf);
		}
		FUNC1(&argv);
	}

	FUNC13(&branch);
	return FUNC3();
}