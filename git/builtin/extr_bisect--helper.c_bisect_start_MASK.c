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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* buf; } ;
struct object_id {int dummy; } ;
struct bisect_terms {char const* term_good; char const* term_bad; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  UPDATE_REFS_MSG_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*,char const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const**) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bisect_terms*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char const* FUNC14 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC16 (char*,int /*<<< orphan*/ ,struct object_id*,int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,char const**) ; 
 scalar_t__ FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC24 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC25 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC27 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC28 (struct string_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *,char*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC31 (char const*,char const*) ; 
 void* FUNC32 (char const*) ; 
 char* FUNC33 (char*,char const*) ; 

__attribute__((used)) static int FUNC34(struct bisect_terms *terms, int no_checkout,
			const char **argv, int argc)
{
	int i, has_double_dash = 0, must_write_terms = 0, bad_seen = 0;
	int flags, pathspec_pos, retval = 0;
	struct string_list revs = STRING_LIST_INIT_DUP;
	struct string_list states = STRING_LIST_INIT_DUP;
	struct strbuf start_head = STRBUF_INIT;
	struct strbuf bisect_names = STRBUF_INIT;
	struct object_id head_oid;
	struct object_id oid;
	const char *head;

	if (FUNC12())
		no_checkout = 1;

	/*
	 * Check for one bad and then some good revisions
	 */
	for (i = 0; i < argc; i++) {
		if (!FUNC26(argv[i], "--")) {
			has_double_dash = 1;
			break;
		}
	}

	for (i = 0; i < argc; i++) {
		const char *arg = argv[i];
		if (!FUNC26(argv[i], "--")) {
			break;
		} else if (!FUNC26(arg, "--no-checkout")) {
			no_checkout = 1;
		} else if (!FUNC26(arg, "--term-good") ||
			 !FUNC26(arg, "--term-old")) {
			must_write_terms = 1;
			FUNC7((void *) terms->term_good);
			terms->term_good = FUNC32(argv[++i]);
		} else if (FUNC18(arg, "--term-good=", &arg) ||
			   FUNC18(arg, "--term-old=", &arg)) {
			must_write_terms = 1;
			FUNC7((void *) terms->term_good);
			terms->term_good = FUNC32(arg);
		} else if (!FUNC26(arg, "--term-bad") ||
			 !FUNC26(arg, "--term-new")) {
			must_write_terms = 1;
			FUNC7((void *) terms->term_bad);
			terms->term_bad = FUNC32(argv[++i]);
		} else if (FUNC18(arg, "--term-bad=", &arg) ||
			   FUNC18(arg, "--term-new=", &arg)) {
			must_write_terms = 1;
			FUNC7((void *) terms->term_bad);
			terms->term_bad = FUNC32(arg);
		} else if (FUNC20(arg, "--") &&
			 !FUNC15(arg, "--term-good", "--term-bad", NULL)) {
			return FUNC6(FUNC0("unrecognized option: '%s'"), arg);
		} else {
			char *commit_id = FUNC33("%s^{commit}", arg);
			if (FUNC8(commit_id, &oid) && has_double_dash)
				FUNC5(FUNC0("'%s' does not appear to be a valid "
				      "revision"), arg);

			FUNC27(&revs, FUNC14(&oid));
			FUNC7(commit_id);
		}
	}
	pathspec_pos = i;

	/*
	 * The user ran "git bisect start <sha1> <sha1>", hence did not
	 * explicitly specify the terms, but we are already starting to
	 * set references named with the default terms, and won't be able
	 * to change afterwards.
	 */
	if (revs.nr)
		must_write_terms = 1;
	for (i = 0; i < revs.nr; i++) {
		if (bad_seen) {
			FUNC27(&states, terms->term_good);
		} else {
			bad_seen = 1;
			FUNC27(&states, terms->term_bad);
		}
	}

	/*
	 * Verify HEAD
	 */
	head = FUNC16("HEAD", 0, &head_oid, &flags);
	if (!head)
		if (FUNC8("HEAD", &head_oid))
			return FUNC6(FUNC0("bad HEAD - I need a HEAD"));

	/*
	 * Check if we are bisecting
	 */
	if (!FUNC13(FUNC10())) {
		/* Reset to the rev from where we started */
		FUNC22(&start_head, FUNC10(), 0);
		FUNC25(&start_head);
		if (!no_checkout) {
			struct argv_array argv = ARGV_ARRAY_INIT;

			FUNC1(&argv, "checkout", start_head.buf,
					 "--", NULL);
			if (FUNC17(argv.argv, RUN_GIT_CMD)) {
				retval = FUNC6(FUNC0("checking out '%s' failed."
						 " Try 'git bisect start "
						 "<valid-branch>'."),
					       start_head.buf);
				goto finish;
			}
		}
	} else {
		/* Get the rev from where we start. */
		if (!FUNC8(head, &head_oid) &&
		    !FUNC20(head, "refs/heads/")) {
			FUNC24(&start_head);
			FUNC21(&start_head, FUNC14(&head_oid));
		} else if (!FUNC8(head, &head_oid) &&
			   FUNC18(head, "refs/heads/", &head)) {
			/*
			 * This error message should only be triggered by
			 * cogito usage, and cogito users should understand
			 * it relates to cg-seek.
			 */
			if (!FUNC13(FUNC11()))
				return FUNC6(FUNC0("won't bisect on cg-seek'ed tree"));
			FUNC21(&start_head, head);
		} else {
			return FUNC6(FUNC0("bad HEAD - strange symbolic ref"));
		}
	}

	/*
	 * Get rid of any old bisect state.
	 */
	if (FUNC3())
		return -1;

	/*
	 * In case of mistaken revs or checkout error, or signals received,
	 * "bisect_auto_next" below may exit or misbehave.
	 * We have to trap this to be able to clean up using
	 * "bisect_clean_state".
	 */

	/*
	 * Write new start state
	 */
	FUNC30(FUNC10(), "%s\n", start_head.buf);

	if (no_checkout) {
		if (FUNC8(start_head.buf, &oid) < 0) {
			retval = FUNC6(FUNC0("invalid ref: '%s'"), start_head.buf);
			goto finish;
		}
		if (FUNC29(NULL, "BISECT_HEAD", &oid, NULL, 0,
			       UPDATE_REFS_MSG_ON_ERR)) {
			retval = -1;
			goto finish;
		}
	}

	if (pathspec_pos < argc - 1)
		FUNC19(&bisect_names, argv + pathspec_pos);
	FUNC30(FUNC9(), "%s\n", bisect_names.buf);

	for (i = 0; i < states.nr; i++)
		if (FUNC4(states.items[i].string,
				 revs.items[i].string, terms, 1)) {
			retval = -1;
			goto finish;
		}

	if (must_write_terms && FUNC31(terms->term_bad,
					    terms->term_good)) {
		retval = -1;
		goto finish;
	}

	retval = FUNC2(argv);
	if (retval)
		retval = -1;

finish:
	FUNC28(&revs, 0);
	FUNC28(&states, 0);
	FUNC23(&start_head);
	FUNC23(&bisect_names);
	return retval;
}