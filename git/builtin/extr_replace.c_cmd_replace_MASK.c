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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (float,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC5 () ; 
 struct option FUNC6 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,char const**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete_replace_ref ; 
 int FUNC10 (char const*,int,int) ; 
 int FUNC11 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  git_replace_usage ; 
 int FUNC13 (char const*,char const*) ; 
 int FUNC14 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ read_replace_refs ; 
 int FUNC15 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct option*) ; 

int FUNC17(int argc, const char **argv, const char *prefix)
{
	int force = 0;
	int raw = 0;
	const char *format = NULL;
	enum {
		MODE_UNSPECIFIED = 0,
		MODE_LIST,
		MODE_DELETE,
		MODE_EDIT,
		MODE_GRAFT,
		MODE_CONVERT_GRAFT_FILE,
		MODE_REPLACE
	} cmdmode = MODE_UNSPECIFIED;
	struct option options[] = {
		FUNC4('l', "list", &cmdmode, FUNC1("list replace refs"), MODE_LIST),
		FUNC4('d', "delete", &cmdmode, FUNC1("delete replace refs"), MODE_DELETE),
		FUNC4('e', "edit", &cmdmode, FUNC1("edit existing object"), MODE_EDIT),
		FUNC4('g', "graft", &cmdmode, FUNC1("change a commit's parents"), MODE_GRAFT),
		FUNC4(0, "convert-graft-file", &cmdmode, FUNC1("convert existing graft file"), MODE_CONVERT_GRAFT_FILE),
		FUNC3('f', "force", &force, FUNC1("replace the ref if it exists"),
			   PARSE_OPT_NOCOMPLETE),
		FUNC2(0, "raw", &raw, FUNC1("do not pretty-print contents for --edit")),
		FUNC6(0, "format", &format, FUNC1("format"), FUNC1("use this format")),
		FUNC5()
	};

	read_replace_refs = 0;
	FUNC12(git_default_config, NULL);

	argc = FUNC14(argc, argv, prefix, options, git_replace_usage, 0);

	if (!cmdmode)
		cmdmode = argc ? MODE_REPLACE : MODE_LIST;

	if (format && cmdmode != MODE_LIST)
		FUNC16(FUNC7("--format cannot be used when not listing"),
			      git_replace_usage, options);

	if (force &&
	    cmdmode != MODE_REPLACE &&
	    cmdmode != MODE_EDIT &&
	    cmdmode != MODE_GRAFT &&
	    cmdmode != MODE_CONVERT_GRAFT_FILE)
		FUNC16(FUNC7("-f only makes sense when writing a replacement"),
			      git_replace_usage, options);

	if (raw && cmdmode != MODE_EDIT)
		FUNC16(FUNC7("--raw only makes sense with --edit"),
			      git_replace_usage, options);

	switch (cmdmode) {
	case MODE_DELETE:
		if (argc < 1)
			FUNC16(FUNC7("-d needs at least one argument"),
				      git_replace_usage, options);
		return FUNC11(argv, delete_replace_ref);

	case MODE_REPLACE:
		if (argc != 2)
			FUNC16(FUNC7("bad number of arguments"),
				      git_replace_usage, options);
		return FUNC15(argv[0], argv[1], force);

	case MODE_EDIT:
		if (argc != 1)
			FUNC16(FUNC7("-e needs exactly one argument"),
				      git_replace_usage, options);
		return FUNC10(argv[0], force, raw);

	case MODE_GRAFT:
		if (argc < 1)
			FUNC16(FUNC7("-g needs at least one argument"),
				      git_replace_usage, options);
		return FUNC9(argc, argv, force, 0);

	case MODE_CONVERT_GRAFT_FILE:
		if (argc != 0)
			FUNC16(FUNC7("--convert-graft-file takes no argument"),
				      git_replace_usage, options);
		return !!FUNC8(force);

	case MODE_LIST:
		if (argc > 1)
			FUNC16(FUNC7("only one pattern can be given with -l"),
				      git_replace_usage, options);
		return FUNC13(argv[0], format);

	default:
		FUNC0("invalid cmdmode %d", (int)cmdmode);
	}
}