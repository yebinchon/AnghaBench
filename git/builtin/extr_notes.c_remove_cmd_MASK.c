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
struct option {int dummy; } ;
struct notes_tree {int dummy; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  IGNORE_MISSING ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct notes_tree*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct notes_tree*) ; 
 int /*<<< orphan*/  git_notes_remove_usage ; 
 struct notes_tree* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct notes_tree*,char const*,unsigned int) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC9 (struct strbuf*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	unsigned flag = 0;
	int from_stdin = 0;
	struct option options[] = {
		FUNC1(0, "ignore-missing", &flag,
			FUNC0("attempt to remove non-existent note is not an error"),
			IGNORE_MISSING),
		FUNC2(0, "stdin", &from_stdin,
			    FUNC0("read object names from the standard input")),
		FUNC3()
	};
	struct notes_tree *t;
	int retval = 0;

	argc = FUNC7(argc, argv, prefix, options,
			     git_notes_remove_usage, 0);

	t = FUNC6("remove", NOTES_INIT_WRITABLE);

	if (!argc && !from_stdin) {
		retval = FUNC8(t, "HEAD", flag);
	} else {
		while (*argv) {
			retval |= FUNC8(t, *argv, flag);
			argv++;
		}
	}
	if (from_stdin) {
		struct strbuf sb = STRBUF_INIT;
		while (FUNC9(&sb, stdin, '\n') != EOF) {
			FUNC11(&sb);
			retval |= FUNC8(t, sb.buf, flag);
		}
		FUNC10(&sb);
	}
	if (!retval)
		FUNC4(the_repository, t,
			     "Notes removed by 'git notes remove'");
	FUNC5(t);
	return retval;
}