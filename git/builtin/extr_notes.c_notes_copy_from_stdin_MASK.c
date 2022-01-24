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
struct object_id {int dummy; } ;
struct notes_tree {int dummy; } ;
struct notes_rewrite_cfg {int dummy; } ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct notes_tree*,char const*) ; 
 int FUNC2 (struct notes_tree*,struct object_id*,struct object_id*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct notes_rewrite_cfg*,struct object_id*,struct object_id*) ; 
 struct notes_tree default_notes_tree ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct notes_rewrite_cfg*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct notes_tree*) ; 
 scalar_t__ FUNC8 (char*,struct object_id*) ; 
 struct notes_rewrite_cfg* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 struct strbuf** FUNC15 (struct strbuf*,char) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC16(int force, const char *rewrite_cmd)
{
	struct strbuf buf = STRBUF_INIT;
	struct notes_rewrite_cfg *c = NULL;
	struct notes_tree *t = NULL;
	int ret = 0;
	const char *msg = "Notes added by 'git notes copy'";

	if (rewrite_cmd) {
		c = FUNC9(rewrite_cmd);
		if (!c)
			return 0;
	} else {
		FUNC10(NULL, NULL, NULL, NOTES_INIT_WRITABLE);
		t = &default_notes_tree;
	}

	while (FUNC11(&buf, stdin) != EOF) {
		struct object_id from_obj, to_obj;
		struct strbuf **split;
		int err;

		split = FUNC15(&buf, ' ');
		if (!split[0] || !split[1])
			FUNC4(FUNC0("malformed input line: '%s'."), buf.buf);
		FUNC14(split[0]);
		FUNC14(split[1]);
		if (FUNC8(split[0]->buf, &from_obj))
			FUNC4(FUNC0("failed to resolve '%s' as a valid ref."), split[0]->buf);
		if (FUNC8(split[1]->buf, &to_obj))
			FUNC4(FUNC0("failed to resolve '%s' as a valid ref."), split[1]->buf);

		if (rewrite_cmd)
			err = FUNC3(c, &from_obj, &to_obj);
		else
			err = FUNC2(t, &from_obj, &to_obj, force,
					combine_notes_overwrite);

		if (err) {
			FUNC5(FUNC0("failed to copy notes from '%s' to '%s'"),
			      split[0]->buf, split[1]->buf);
			ret = 1;
		}

		FUNC12(split);
	}

	if (!rewrite_cmd) {
		FUNC1(the_repository, t, msg);
		FUNC7(t);
	} else {
		FUNC6(the_repository, c, msg);
	}
	FUNC13(&buf);
	return ret;
}