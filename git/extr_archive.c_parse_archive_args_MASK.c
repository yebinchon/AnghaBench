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
struct option {int dummy; } ;
struct archiver_args {int compression_level; int verbose; char const* base; int worktree_attributes; int /*<<< orphan*/  baselen; } ;
struct archiver {int flags; } ;
struct TYPE_2__ {int flags; char* name; } ;

/* Variables and functions */
 int ARCHIVER_REMOTE ; 
 int ARCHIVER_WANT_COMPRESSION_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char*) ; 
 struct option FUNC4 (char,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (char,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC6 (char,int*,int) ; 
 struct option FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  archive_usage ; 
 TYPE_1__** archivers ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct archiver* FUNC12 (char const*) ; 
 int nr_archivers ; 
 int FUNC13 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC17(int argc, const char **argv,
		const struct archiver **ar, struct archiver_args *args,
		const char *name_hint, int is_remote)
{
	const char *format = NULL;
	const char *base = NULL;
	const char *remote = NULL;
	const char *exec = NULL;
	const char *output = NULL;
	int compression_level = -1;
	int verbose = 0;
	int i;
	int list = 0;
	int worktree_attributes = 0;
	struct option opts[] = {
		FUNC3(""),
		FUNC4(0, "format", &format, FUNC0("fmt"), FUNC0("archive format")),
		FUNC4(0, "prefix", &base, FUNC0("prefix"),
			FUNC0("prepend prefix to each pathname in the archive")),
		FUNC4('o', "output", &output, FUNC0("file"),
			FUNC0("write the archive to this file")),
		FUNC1(0, "worktree-attributes", &worktree_attributes,
			FUNC0("read .gitattributes in working directory")),
		FUNC7(&verbose, FUNC0("report archived files on stderr")),
		FUNC5('0', &compression_level, FUNC0("store only"), 0),
		FUNC5('1', &compression_level, FUNC0("compress faster"), 1),
		FUNC6('2', &compression_level, 2),
		FUNC6('3', &compression_level, 3),
		FUNC6('4', &compression_level, 4),
		FUNC6('5', &compression_level, 5),
		FUNC6('6', &compression_level, 6),
		FUNC6('7', &compression_level, 7),
		FUNC6('8', &compression_level, 8),
		FUNC5('9', &compression_level, FUNC0("compress better"), 9),
		FUNC3(""),
		FUNC1('l', "list", &list,
			FUNC0("list supported archive formats")),
		FUNC3(""),
		FUNC4(0, "remote", &remote, FUNC0("repo"),
			FUNC0("retrieve the archive from remote repository <repo>")),
		FUNC4(0, "exec", &exec, FUNC0("command"),
			FUNC0("path to the remote git-upload-archive command")),
		FUNC2()
	};

	argc = FUNC13(argc, argv, NULL, opts, archive_usage, 0);

	if (remote)
		FUNC10(FUNC8("Unexpected option --remote"));
	if (exec)
		FUNC10(FUNC8("Option --exec can only be used together with --remote"));
	if (output)
		FUNC10(FUNC8("Unexpected option --output"));

	if (!base)
		base = "";

	if (list) {
		for (i = 0; i < nr_archivers; i++)
			if (!is_remote || archivers[i]->flags & ARCHIVER_REMOTE)
				FUNC14("%s\n", archivers[i]->name);
		FUNC11(0);
	}

	if (!format && name_hint)
		format = FUNC9(name_hint);
	if (!format)
		format = "tar";

	/* We need at least one parameter -- tree-ish */
	if (argc < 1)
		FUNC16(archive_usage, opts);
	*ar = FUNC12(format);
	if (!*ar || (is_remote && !((*ar)->flags & ARCHIVER_REMOTE)))
		FUNC10(FUNC8("Unknown archive format '%s'"), format);

	args->compression_level = Z_DEFAULT_COMPRESSION;
	if (compression_level != -1) {
		if ((*ar)->flags & ARCHIVER_WANT_COMPRESSION_LEVELS)
			args->compression_level = compression_level;
		else {
			FUNC10(FUNC8("Argument not supported for format '%s': -%d"),
					format, compression_level);
		}
	}
	args->verbose = verbose;
	args->base = base;
	args->baselen = FUNC15(base);
	args->worktree_attributes = worktree_attributes;

	return argc;
}