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
struct worktree {int /*<<< orphan*/  path; } ;
struct strbuf {char* buf; scalar_t__ len; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int dummy; } ;
struct notes_merge_options {int verbosity; char* local_ref; char* remote_ref; int /*<<< orphan*/  commit_msg; int /*<<< orphan*/  strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int NOTES_MERGE_VERBOSITY_DEFAULT ; 
 int /*<<< orphan*/  NOTES_MERGE_WORKTREE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (char,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC6 (int*) ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 struct worktree* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct notes_tree*) ; 
 scalar_t__ FUNC16 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_notes_merge_usage ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 struct notes_tree* FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct notes_merge_options*) ; 
 int FUNC20 (struct notes_merge_options*) ; 
 int FUNC21 (struct notes_merge_options*) ; 
 int FUNC22 (struct notes_merge_options*,struct notes_tree*,struct object_id*) ; 
 scalar_t__ FUNC23 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC24 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,char const**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC28 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC29 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC30 (char*,char*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC32(int argc, const char **argv, const char *prefix)
{
	struct strbuf remote_ref = STRBUF_INIT, msg = STRBUF_INIT;
	struct object_id result_oid;
	struct notes_tree *t;
	struct notes_merge_options o;
	int do_merge = 0, do_commit = 0, do_abort = 0;
	int verbosity = 0, result;
	const char *strategy = NULL;
	struct option options[] = {
		FUNC3(FUNC1("General options")),
		FUNC6(&verbosity),
		FUNC3(FUNC1("Merge options")),
		FUNC5('s', "strategy", &strategy, FUNC1("strategy"),
			   FUNC1("resolve notes conflicts using the given strategy "
			      "(manual/ours/theirs/union/cat_sort_uniq)")),
		FUNC3(FUNC1("Committing unmerged notes")),
		FUNC4(0, "commit", &do_commit,
			      FUNC1("finalize notes merge by committing unmerged notes"),
			      1, PARSE_OPT_NONEG),
		FUNC3(FUNC1("Aborting notes merge resolution")),
		FUNC4(0, "abort", &do_abort,
			      FUNC1("abort notes merge"),
			      1, PARSE_OPT_NONEG),
		FUNC2()
	};

	argc = FUNC24(argc, argv, prefix, options,
			     git_notes_merge_usage, 0);

	if (strategy || do_commit + do_abort == 0)
		do_merge = 1;
	if (do_merge + do_commit + do_abort != 1) {
		FUNC11(FUNC7("cannot mix --commit, --abort or -s/--strategy"));
		FUNC31(git_notes_merge_usage, options);
	}

	if (do_merge && argc != 1) {
		FUNC11(FUNC7("must specify a notes ref to merge"));
		FUNC31(git_notes_merge_usage, options);
	} else if (!do_merge && argc) {
		FUNC11(FUNC7("too many parameters"));
		FUNC31(git_notes_merge_usage, options);
	}

	FUNC19(the_repository, &o);
	o.verbosity = verbosity + NOTES_MERGE_VERBOSITY_DEFAULT;

	if (do_abort)
		return FUNC20(&o);
	if (do_commit)
		return FUNC21(&o);

	o.local_ref = FUNC9();
	FUNC28(&remote_ref, argv[0]);
	FUNC12(&remote_ref);
	o.remote_ref = remote_ref.buf;

	t = FUNC18("merge", NOTES_INIT_WRITABLE);

	if (strategy) {
		if (FUNC23(strategy, &o.strategy)) {
			FUNC11(FUNC7("unknown -s/--strategy: %s"), strategy);
			FUNC31(git_notes_merge_usage, options);
		}
	} else {
		struct strbuf merge_key = STRBUF_INIT;
		const char *short_ref = NULL;

		if (!FUNC25(o.local_ref, "refs/notes/", &short_ref))
			FUNC0("local ref %s is outside of refs/notes/",
			    o.local_ref);

		FUNC27(&merge_key, "notes.%s.mergeStrategy", short_ref);

		if (FUNC16(merge_key.buf, &o.strategy))
			FUNC16("notes.mergeStrategy", &o.strategy);

		FUNC29(&merge_key);
	}

	FUNC27(&msg, "notes: Merged notes from %s into %s",
		    remote_ref.buf, FUNC9());
	FUNC26(&(o.commit_msg), msg.buf + 7, msg.len - 7); /* skip "notes: " */

	result = FUNC22(&o, t, &result_oid);

	if (result >= 0) /* Merge resulted (trivially) in result_oid */
		/* Update default notes ref with new commit */
		FUNC30(msg.buf, FUNC9(), &result_oid, NULL, 0,
			   UPDATE_REFS_DIE_ON_ERR);
	else { /* Merge has unresolved conflicts */
		const struct worktree *wt;
		/* Update .git/NOTES_MERGE_PARTIAL with partial merge result */
		FUNC30(msg.buf, "NOTES_MERGE_PARTIAL", &result_oid, NULL,
			   0, UPDATE_REFS_DIE_ON_ERR);
		/* Store ref-to-be-updated into .git/NOTES_MERGE_REF */
		wt = FUNC13("NOTES_MERGE_REF", FUNC9());
		if (wt)
			FUNC10(FUNC7("a notes merge into %s is already in-progress at %s"),
			    FUNC9(), wt->path);
		if (FUNC8("NOTES_MERGE_REF", FUNC9(), NULL))
			FUNC10(FUNC7("failed to store link to current notes ref (%s)"),
			    FUNC9());
		FUNC14(stderr, FUNC7("Automatic notes merge failed. Fix conflicts in %s "
				  "and commit the result with 'git notes merge --commit', "
				  "or abort the merge with 'git notes merge --abort'.\n"),
			FUNC17(NOTES_MERGE_WORKTREE));
	}

	FUNC15(t);
	FUNC29(&remote_ref);
	FUNC29(&msg);
	return result < 0; /* return non-zero on conflicts */
}