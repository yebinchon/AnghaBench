#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {char const* ancestor; char const* file1; char const* file2; scalar_t__ style; scalar_t__ favor; int /*<<< orphan*/  level; int /*<<< orphan*/  marker_size; TYPE_1__ member_0; } ;
typedef  TYPE_2__ xmparam_t ;
struct option {int dummy; } ;
struct TYPE_15__ {scalar_t__ size; char* ptr; } ;
typedef  TYPE_3__ mmfile_t ;
struct TYPE_16__ {char* ptr; scalar_t__ size; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_4__ mmbuffer_t ;
struct TYPE_12__ {scalar_t__ have_repository; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MAX_XDIFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 (char,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XDL_MERGE_DIFF3 ; 
 int /*<<< orphan*/  XDL_MERGE_FAVOR_OURS ; 
 int /*<<< orphan*/  XDL_MERGE_FAVOR_THEIRS ; 
 int /*<<< orphan*/  XDL_MERGE_FAVOR_UNION ; 
 int /*<<< orphan*/  XDL_MERGE_ZEALOUS_ALNUM ; 
 scalar_t__ FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (char*,char const*) ; 
 int FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_xmerge_config ; 
 scalar_t__ git_xmerge_style ; 
 int /*<<< orphan*/  label_cb ; 
 int /*<<< orphan*/  merge_file_usage ; 
 int FUNC16 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (char const*,char const*) ; 
 int FUNC18 (TYPE_3__*,char*) ; 
 TYPE_10__* startup_info ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct option*) ; 
 int FUNC20 (TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_2__*,TYPE_4__*) ; 

int FUNC21(int argc, const char **argv, const char *prefix)
{
	const char *names[3] = { NULL, NULL, NULL };
	mmfile_t mmfs[3];
	mmbuffer_t result = {NULL, 0};
	xmparam_t xmp = {0};
	int ret = 0, i = 0, to_stdout = 0;
	int quiet = 0;
	struct option options[] = {
		FUNC1('p', "stdout", &to_stdout, FUNC0("send results to standard output")),
		FUNC5(0, "diff3", &xmp.style, FUNC0("use a diff3 based merge"), XDL_MERGE_DIFF3),
		FUNC5(0, "ours", &xmp.favor, FUNC0("for conflicts, use our version"),
			    XDL_MERGE_FAVOR_OURS),
		FUNC5(0, "theirs", &xmp.favor, FUNC0("for conflicts, use their version"),
			    XDL_MERGE_FAVOR_THEIRS),
		FUNC5(0, "union", &xmp.favor, FUNC0("for conflicts, use a union version"),
			    XDL_MERGE_FAVOR_UNION),
		FUNC4(0, "marker-size", &xmp.marker_size,
			    FUNC0("for conflicts, use this marker size")),
		FUNC6(&quiet, FUNC0("do not warn about conflicts")),
		FUNC2('L', NULL, names, FUNC0("name"),
			     FUNC0("set labels for file1/orig-file/file2"), &label_cb),
		FUNC3(),
	};

	xmp.level = XDL_MERGE_ZEALOUS_ALNUM;
	xmp.style = 0;
	xmp.favor = 0;

	if (startup_info->have_repository) {
		/* Read the configuration file */
		FUNC15(git_xmerge_config, NULL);
		if (0 <= git_xmerge_style)
			xmp.style = git_xmerge_style;
	}

	argc = FUNC16(argc, argv, prefix, options, merge_file_usage, 0);
	if (argc != 3)
		FUNC19(merge_file_usage, options);
	if (quiet) {
		if (!FUNC13("/dev/null", "w", stderr))
			return FUNC9("failed to redirect stderr to /dev/null");
	}

	for (i = 0; i < 3; i++) {
		char *fname;
		int ret;

		if (!names[i])
			names[i] = argv[i];

		fname = FUNC17(prefix, argv[i]);
		ret = FUNC18(mmfs + i, fname);
		FUNC12(fname);
		if (ret)
			return -1;

		if (mmfs[i].size > MAX_XDIFF_SIZE ||
		    FUNC7(mmfs[i].ptr, mmfs[i].size))
			return FUNC8("Cannot merge binary files: %s",
					argv[i]);
	}

	xmp.ancestor = names[1];
	xmp.file1 = names[0];
	xmp.file2 = names[2];
	ret = FUNC20(mmfs + 1, mmfs + 0, mmfs + 2, &xmp, &result);

	for (i = 0; i < 3; i++)
		FUNC12(mmfs[i].ptr);

	if (ret >= 0) {
		const char *filename = argv[0];
		char *fpath = FUNC17(prefix, argv[0]);
		FILE *f = to_stdout ? stdout : FUNC11(fpath, "wb");

		if (!f)
			ret = FUNC9("Could not open %s for writing",
					  filename);
		else if (result.size &&
			 FUNC14(result.ptr, result.size, 1, f) != 1)
			ret = FUNC9("Could not write to %s", filename);
		else if (FUNC10(f))
			ret = FUNC9("Could not close %s", filename);
		FUNC12(result.ptr);
		FUNC12(fpath);
	}

	if (ret > 127)
		ret = 127;

	return ret;
}