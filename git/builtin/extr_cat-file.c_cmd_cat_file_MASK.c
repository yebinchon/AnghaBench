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
struct option {char* member_2; char* member_4; int member_6; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_5; struct batch_options* member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct batch_options {int buffer_output; int follow_symlinks; int all_objects; int unordered; int cmdmode; scalar_t__ enabled; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option const FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 (char,char*,int*,int /*<<< orphan*/ ,char) ; 
 struct option const FUNC3 () ; 
 struct option const FUNC4 (int /*<<< orphan*/ ) ; 
 struct option const FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARSE_OPT_NONEG ; 
 int PARSE_OPT_OPTARG ; 
 int FUNC6 (struct batch_options*) ; 
 int /*<<< orphan*/  batch_option_callback ; 
 int /*<<< orphan*/  cat_file_usage ; 
 int FUNC7 (int,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ force_path ; 
 int /*<<< orphan*/  git_cat_file_config ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct option const*) ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	int opt = 0;
	const char *exp_type = NULL, *obj_name = NULL;
	struct batch_options batch = {0};
	int unknown_type = 0;

	const struct option options[] = {
		FUNC4(FUNC0("<type> can be one of: blob, tree, commit, tag")),
		FUNC2('t', NULL, &opt, FUNC0("show object type"), 't'),
		FUNC2('s', NULL, &opt, FUNC0("show object size"), 's'),
		FUNC2('e', NULL, &opt,
			    FUNC0("exit with zero when there's no error"), 'e'),
		FUNC2('p', NULL, &opt, FUNC0("pretty-print object's content"), 'p'),
		FUNC2(0, "textconv", &opt,
			    FUNC0("for blob objects, run textconv on object's content"), 'c'),
		FUNC2(0, "filters", &opt,
			    FUNC0("for blob objects, run filters on object's content"), 'w'),
		FUNC5(0, "path", &force_path, FUNC0("blob"),
			   FUNC0("use a specific path for --textconv/--filters")),
		FUNC1(0, "allow-unknown-type", &unknown_type,
			  FUNC0("allow -s and -t to work with broken/corrupt objects")),
		FUNC1(0, "buffer", &batch.buffer_output, FUNC0("buffer --batch output")),
		{ OPTION_CALLBACK, 0, "batch", &batch, "format",
			FUNC0("show info and content of objects fed from the standard input"),
			PARSE_OPT_OPTARG | PARSE_OPT_NONEG,
			batch_option_callback },
		{ OPTION_CALLBACK, 0, "batch-check", &batch, "format",
			FUNC0("show info about objects fed from the standard input"),
			PARSE_OPT_OPTARG | PARSE_OPT_NONEG,
			batch_option_callback },
		FUNC1(0, "follow-symlinks", &batch.follow_symlinks,
			 FUNC0("follow in-tree symlinks (used with --batch or --batch-check)")),
		FUNC1(0, "batch-all-objects", &batch.all_objects,
			 FUNC0("show all objects with --batch or --batch-check")),
		FUNC1(0, "unordered", &batch.unordered,
			 FUNC0("do not order --batch-all-objects output")),
		FUNC3()
	};

	FUNC10(git_cat_file_config, NULL);

	batch.buffer_output = -1;
	argc = FUNC11(argc, argv, prefix, options, cat_file_usage, 0);

	if (opt) {
		if (batch.enabled && (opt == 'c' || opt == 'w'))
			batch.cmdmode = opt;
		else if (argc == 1)
			obj_name = argv[0];
		else
			FUNC12(cat_file_usage, options);
	}
	if (!opt && !batch.enabled) {
		if (argc == 2) {
			exp_type = argv[0];
			obj_name = argv[1];
		} else
			FUNC12(cat_file_usage, options);
	}
	if (batch.enabled) {
		if (batch.cmdmode != opt || argc)
			FUNC12(cat_file_usage, options);
		if (batch.cmdmode && batch.all_objects)
			FUNC8("--batch-all-objects cannot be combined with "
			    "--textconv nor with --filters");
	}

	if ((batch.follow_symlinks || batch.all_objects) && !batch.enabled) {
		FUNC12(cat_file_usage, options);
	}

	if (force_path && opt != 'c' && opt != 'w') {
		FUNC9("--path=<path> needs --textconv or --filters");
		FUNC12(cat_file_usage, options);
	}

	if (force_path && batch.enabled) {
		FUNC9("--path=<path> incompatible with --batch");
		FUNC12(cat_file_usage, options);
	}

	if (batch.buffer_output < 0)
		batch.buffer_output = batch.all_objects;

	if (batch.enabled)
		return FUNC6(&batch);

	if (unknown_type && opt != 't' && opt != 's')
		FUNC8("git cat-file --allow-unknown-type: use with -s or -t");
	return FUNC7(opt, exp_type, obj_name, unknown_type);
}