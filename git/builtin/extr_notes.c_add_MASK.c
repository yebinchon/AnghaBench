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
struct option {char member_1; char* member_2; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; struct note_data* member_3; int /*<<< orphan*/  member_0; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct notes_tree {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct note_data {TYPE_1__ buf; scalar_t__ given; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  STRBUF_INIT ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct notes_tree*,struct object_id*,struct object_id*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char const**,char const*) ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct notes_tree*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct note_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct notes_tree*) ; 
 struct object_id* FUNC14 (struct notes_tree*,struct object_id*) ; 
 scalar_t__ FUNC15 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  git_notes_add_usage ; 
 struct notes_tree* FUNC16 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC17 (struct object_id*) ; 
 int /*<<< orphan*/  parse_file_arg ; 
 int /*<<< orphan*/  parse_msg_arg ; 
 int FUNC18 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_reedit_arg ; 
 int /*<<< orphan*/  parse_reuse_arg ; 
 int /*<<< orphan*/  FUNC19 (struct object_id*,struct note_data*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC20 (struct notes_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC22 (struct note_data*,struct object_id*) ; 

__attribute__((used)) static int FUNC23(int argc, const char **argv, const char *prefix)
{
	int force = 0, allow_empty = 0;
	const char *object_ref;
	struct notes_tree *t;
	struct object_id object, new_note;
	const struct object_id *note;
	struct note_data d = { 0, 0, NULL, &STRBUF_INIT };
	struct option options[] = {
		{ OPTION_CALLBACK, 'm', "message", &d, FUNC1("message"),
			FUNC1("note contents as a string"), PARSE_OPT_NONEG,
			parse_msg_arg},
		{ OPTION_CALLBACK, 'F', "file", &d, FUNC1("file"),
			FUNC1("note contents in a file"), PARSE_OPT_NONEG,
			parse_file_arg},
		{ OPTION_CALLBACK, 'c', "reedit-message", &d, FUNC1("object"),
			FUNC1("reuse and edit specified note object"), PARSE_OPT_NONEG,
			parse_reedit_arg},
		{ OPTION_CALLBACK, 'C', "reuse-message", &d, FUNC1("object"),
			FUNC1("reuse specified note object"), PARSE_OPT_NONEG,
			parse_reuse_arg},
		FUNC2(0, "allow-empty", &allow_empty,
			FUNC1("allow storing empty note")),
		FUNC4(&force, FUNC1("replace existing notes"), PARSE_OPT_NOCOMPLETE),
		FUNC3()
	};

	argc = FUNC18(argc, argv, prefix, options, git_notes_add_usage,
			     PARSE_OPT_KEEP_ARGV0);

	if (2 < argc) {
		FUNC10(FUNC5("too many parameters"));
		FUNC21(git_notes_add_usage, options);
	}

	object_ref = argc > 1 ? argv[1] : "HEAD";

	if (FUNC15(object_ref, &object))
		FUNC9(FUNC5("failed to resolve '%s' as a valid ref."), object_ref);

	t = FUNC16("add", NOTES_INIT_WRITABLE);
	note = FUNC14(t, &object);

	if (note) {
		if (!force) {
			FUNC13(t);
			if (d.given) {
				FUNC12(&d);
				return FUNC10(FUNC5("Cannot add notes. "
					"Found existing notes for object %s. "
					"Use '-f' to overwrite existing notes"),
					FUNC17(&object));
			}
			/*
			 * Redirect to "edit" subcommand.
			 *
			 * We only end up here if none of -m/-F/-c/-C or -f are
			 * given. The original args are therefore still in
			 * argv[0-1].
			 */
			argv[0] = "edit";
			return FUNC7(argc, argv, prefix);
		}
		FUNC11(stderr, FUNC5("Overwriting existing notes for object %s\n"),
			FUNC17(&object));
	}

	FUNC19(&object, &d, note);
	if (d.buf.len || allow_empty) {
		FUNC22(&d, &new_note);
		if (FUNC6(t, &object, &new_note, combine_notes_overwrite))
			FUNC0("combine_notes_overwrite failed");
		FUNC8(the_repository, t,
			     "Notes added by 'git notes add'");
	} else {
		FUNC11(stderr, FUNC5("Removing note for object %s\n"),
			FUNC17(&object));
		FUNC20(t, object.hash);
		FUNC8(the_repository, t,
			     "Notes removed by 'git notes add'");
	}

	FUNC12(&d);
	FUNC13(t);
	return 0;
}