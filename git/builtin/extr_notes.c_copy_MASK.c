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
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct notes_tree*,struct object_id*,struct object_id const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct notes_tree*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct notes_tree*) ; 
 struct object_id* FUNC13 (struct notes_tree*,struct object_id*) ; 
 scalar_t__ FUNC14 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  git_notes_copy_usage ; 
 struct notes_tree* FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,char const*) ; 
 char* FUNC17 (struct object_id*) ; 
 int FUNC18 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC20(int argc, const char **argv, const char *prefix)
{
	int retval = 0, force = 0, from_stdin = 0;
	const struct object_id *from_note, *note;
	const char *object_ref;
	struct object_id object, from_obj;
	struct notes_tree *t;
	const char *rewrite_cmd = NULL;
	struct option options[] = {
		FUNC5(&force, FUNC1("replace existing notes"), PARSE_OPT_NOCOMPLETE),
		FUNC2(0, "stdin", &from_stdin, FUNC1("read objects from stdin")),
		FUNC4(0, "for-rewrite", &rewrite_cmd, FUNC1("command"),
			   FUNC1("load rewriting config for <command> (implies "
			      "--stdin)")),
		FUNC3()
	};

	argc = FUNC18(argc, argv, prefix, options, git_notes_copy_usage,
			     0);

	if (from_stdin || rewrite_cmd) {
		if (argc) {
			FUNC10(FUNC6("too many parameters"));
			FUNC19(git_notes_copy_usage, options);
		} else {
			return FUNC16(force, rewrite_cmd);
		}
	}

	if (argc < 1) {
		FUNC10(FUNC6("too few parameters"));
		FUNC19(git_notes_copy_usage, options);
	}
	if (2 < argc) {
		FUNC10(FUNC6("too many parameters"));
		FUNC19(git_notes_copy_usage, options);
	}

	if (FUNC14(argv[0], &from_obj))
		FUNC9(FUNC6("failed to resolve '%s' as a valid ref."), argv[0]);

	object_ref = 1 < argc ? argv[1] : "HEAD";

	if (FUNC14(object_ref, &object))
		FUNC9(FUNC6("failed to resolve '%s' as a valid ref."), object_ref);

	t = FUNC15("copy", NOTES_INIT_WRITABLE);
	note = FUNC13(t, &object);

	if (note) {
		if (!force) {
			retval = FUNC10(FUNC6("Cannot copy notes. Found existing "
				       "notes for object %s. Use '-f' to "
				       "overwrite existing notes"),
				       FUNC17(&object));
			goto out;
		}
		FUNC11(stderr, FUNC6("Overwriting existing notes for object %s\n"),
			FUNC17(&object));
	}

	from_note = FUNC13(t, &from_obj);
	if (!from_note) {
		retval = FUNC10(FUNC6("missing notes on source object %s. Cannot "
			       "copy."), FUNC17(&from_obj));
		goto out;
	}

	if (FUNC7(t, &object, from_note, combine_notes_overwrite))
		FUNC0("combine_notes_overwrite failed");
	FUNC8(the_repository, t,
		     "Notes added by 'git notes copy'");
out:
	FUNC12(t);
	return retval;
}