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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct notes_rewrite_cfg {int dummy; } ;
struct am_state {int /*<<< orphan*/  rebasing; } ;
struct TYPE_2__ {int hexsz; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct am_state const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct notes_rewrite_cfg*,struct object_id*,struct object_id*) ; 
 int FUNC4 (char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct notes_rewrite_cfg*,char const*) ; 
 scalar_t__ FUNC7 (char const*,struct object_id*) ; 
 struct notes_rewrite_cfg* FUNC8 (char*) ; 
 char* FUNC9 (struct object_id*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(const struct am_state *state)
{
	struct notes_rewrite_cfg *c;
	struct strbuf sb = STRBUF_INIT;
	const char *invalid_line = FUNC0("Malformed input line: '%s'.");
	const char *msg = "Notes added by 'git rebase'";
	FILE *fp;
	int ret = 0;

	FUNC2(state->rebasing);

	c = FUNC8("rebase");
	if (!c)
		return 0;

	fp = FUNC13(FUNC1(state, "rewritten"), "r");

	while (!FUNC11(&sb, fp)) {
		struct object_id from_obj, to_obj;
		const char *p;

		if (sb.len != the_hash_algo->hexsz * 2 + 1) {
			ret = FUNC4(invalid_line, sb.buf);
			goto finish;
		}

		if (FUNC10(sb.buf, &from_obj, &p)) {
			ret = FUNC4(invalid_line, sb.buf);
			goto finish;
		}

		if (*p != ' ') {
			ret = FUNC4(invalid_line, sb.buf);
			goto finish;
		}

		if (FUNC7(p + 1, &to_obj)) {
			ret = FUNC4(invalid_line, sb.buf);
			goto finish;
		}

		if (FUNC3(c, &from_obj, &to_obj))
			ret = FUNC4(FUNC0("Failed to copy notes from '%s' to '%s'"),
					FUNC9(&from_obj), FUNC9(&to_obj));
	}

finish:
	FUNC6(the_repository, c, msg);
	FUNC5(fp);
	FUNC12(&sb);
	return ret;
}