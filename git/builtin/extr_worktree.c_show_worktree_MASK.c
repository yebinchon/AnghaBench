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
struct worktree {scalar_t__ head_ref; scalar_t__ is_detached; int /*<<< orphan*/  head_oid; scalar_t__ is_bare; int /*<<< orphan*/  path; } ;
struct strbuf {char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct worktree *wt, int path_maxlen, int abbrev_len)
{
	struct strbuf sb = STRBUF_INIT;
	int cur_path_len = FUNC7(wt->path);
	int path_adj = cur_path_len - FUNC8(wt->path);

	FUNC4(&sb, "%-*s ", 1 + path_maxlen + path_adj, wt->path);
	if (wt->is_bare)
		FUNC5(&sb, "(bare)");
	else {
		FUNC4(&sb, "%-*s ", abbrev_len,
				FUNC0(&wt->head_oid, DEFAULT_ABBREV));
		if (wt->is_detached)
			FUNC5(&sb, "(detached HEAD)");
		else if (wt->head_ref) {
			char *ref = FUNC3(wt->head_ref, 0);
			FUNC4(&sb, "[%s]", ref);
			FUNC1(ref);
		} else
			FUNC5(&sb, "(error)");
	}
	FUNC2("%s\n", sb.buf);

	FUNC6(&sb);
}