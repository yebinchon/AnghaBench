#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct option {char member_1; char* member_2; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; struct note_data* member_3; int /*<<< orphan*/  member_0; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct notes_tree {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct note_data {TYPE_1__ buf; scalar_t__ given; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  STRBUF_INIT ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct notes_tree*,struct object_id*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct notes_tree*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct note_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct notes_tree*) ; 
 struct object_id* FUNC13 (struct notes_tree*,struct object_id*) ; 
 scalar_t__ FUNC14 (char const*,struct object_id*) ; 
 char** git_notes_append_usage ; 
 char** git_notes_edit_usage ; 
 struct notes_tree* FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC16 (struct object_id*) ; 
 int /*<<< orphan*/  parse_file_arg ; 
 int /*<<< orphan*/  parse_msg_arg ; 
 int FUNC17 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_reedit_arg ; 
 int /*<<< orphan*/  parse_reuse_arg ; 
 int /*<<< orphan*/  FUNC18 (struct object_id*,struct note_data*,struct object_id const*) ; 
 char* FUNC19 (struct object_id const*,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC20 (struct notes_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC24 (char const* const*,struct option*) ; 
 int /*<<< orphan*/  FUNC25 (struct note_data*,struct object_id*) ; 
 char* FUNC26 (char*,char const*) ; 

__attribute__((used)) static int FUNC27(int argc, const char **argv, const char *prefix)
{
	int allow_empty = 0;
	const char *object_ref;
	struct notes_tree *t;
	struct object_id object, new_note;
	const struct object_id *note;
	char *logmsg;
	const char * const *usage;
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
		FUNC3()
	};
	int edit = !FUNC23(argv[0], "edit");

	usage = edit ? git_notes_edit_usage : git_notes_append_usage;
	argc = FUNC17(argc, argv, prefix, options, usage,
			     PARSE_OPT_KEEP_ARGV0);

	if (2 < argc) {
		FUNC8(FUNC4("too many parameters"));
		FUNC24(usage, options);
	}

	if (d.given && edit)
		FUNC9(stderr, "%s", FUNC4("The -m/-F/-c/-C options have been deprecated "
			"for the 'edit' subcommand.\n"
			"Please use 'git notes add -f -m/-F/-c/-C' instead.\n"));

	object_ref = 1 < argc ? argv[1] : "HEAD";

	if (FUNC14(object_ref, &object))
		FUNC7(FUNC4("failed to resolve '%s' as a valid ref."), object_ref);

	t = FUNC15(argv[0], NOTES_INIT_WRITABLE);
	note = FUNC13(t, &object);

	FUNC18(&object, &d, edit && note ? note : NULL);

	if (note && !edit) {
		/* Append buf to previous note contents */
		unsigned long size;
		enum object_type type;
		char *prev_buf = FUNC19(note, &type, &size);

		FUNC21(&d.buf, size + 1);
		if (d.buf.len && prev_buf && size)
			FUNC22(&d.buf, 0, "\n", 1);
		if (prev_buf && size)
			FUNC22(&d.buf, 0, prev_buf, size);
		FUNC10(prev_buf);
	}

	if (d.buf.len || allow_empty) {
		FUNC25(&d, &new_note);
		if (FUNC5(t, &object, &new_note, combine_notes_overwrite))
			FUNC0("combine_notes_overwrite failed");
		logmsg = FUNC26("Notes added by 'git notes %s'", argv[0]);
	} else {
		FUNC9(stderr, FUNC4("Removing note for object %s\n"),
			FUNC16(&object));
		FUNC20(t, object.hash);
		logmsg = FUNC26("Notes removed by 'git notes %s'", argv[0]);
	}
	FUNC6(the_repository, t, logmsg);

	FUNC10(logmsg);
	FUNC11(&d);
	FUNC12(t);
	return 0;
}