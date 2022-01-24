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
struct option {int dummy; } ;
struct object_id {int dummy; } ;
typedef  scalar_t__ (* strbuf_getline_fn ) (struct strbuf*,int /*<<< orphan*/ ) ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (char,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  mktree_usage ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*) ; 
 int FUNC9 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int used ; 
 int /*<<< orphan*/  FUNC14 (struct object_id*) ; 

int FUNC15(int ac, const char **av, const char *prefix)
{
	struct strbuf sb = STRBUF_INIT;
	struct object_id oid;
	int nul_term_line = 0;
	int allow_missing = 0;
	int is_batch_mode = 0;
	int got_eof = 0;
	strbuf_getline_fn getline_fn;

	const struct option option[] = {
		FUNC1('z', NULL, &nul_term_line, FUNC0("input is NUL terminated")),
		FUNC3( 0 , "missing", &allow_missing, FUNC0("allow missing objects"), 1),
		FUNC3( 0 , "batch", &is_batch_mode, FUNC0("allow creation of more than one tree"), 1),
		FUNC2()
	};

	ac = FUNC9(ac, av, prefix, option, mktree_usage, 0);
	getline_fn = nul_term_line ? strbuf_getline_nul : strbuf_getline_lf;

	while (!got_eof) {
		while (1) {
			if (getline_fn(&sb, stdin) == EOF) {
				got_eof = 1;
				break;
			}
			if (sb.buf[0] == '\0') {
				/* empty lines denote tree boundaries in batch mode */
				if (is_batch_mode)
					break;
				FUNC4("input format error: (blank line only valid in batch mode)");
			}
			FUNC7(sb.buf, nul_term_line, allow_missing);
		}
		if (is_batch_mode && got_eof && used < 1) {
			/*
			 * Execution gets here if the last tree entry is terminated with a
			 * new-line.  The final new-line has been made optional to be
			 * consistent with the original non-batch behaviour of mktree.
			 */
			; /* skip creating an empty tree */
		} else {
			FUNC14(&oid);
			FUNC10(FUNC8(&oid));
			FUNC6(stdout);
		}
		used=0; /* reset tree entry buffer for re-use in batch mode */
	}
	FUNC13(&sb);
	FUNC5(0);
}