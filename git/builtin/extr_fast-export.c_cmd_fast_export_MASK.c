#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_7__ {int recursive; } ;
struct TYPE_8__ {TYPE_3__ flags; struct string_list* format_callback_data; int /*<<< orphan*/  format_callback; } ;
struct TYPE_6__ {scalar_t__ nr; } ;
struct rev_info {int topo_order; int rewrite_parents; TYPE_4__ diffopt; int /*<<< orphan*/  cmdline; TYPE_2__ prune_data; int /*<<< orphan*/ * sources; } ;
struct option {int dummy; } ;
struct object_array {int dummy; } ;
struct commit {int /*<<< orphan*/  object; } ;
struct TYPE_5__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC6 (int /*<<< orphan*/ ,char*,struct string_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARSE_OPT_KEEP_ARGV0 ; 
 int PARSE_OPT_KEEP_UNKNOWN ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct object_array*) ; 
 int anonymize ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  extra_refs ; 
 int fake_missing_tagger ; 
 int /*<<< orphan*/  fast_export_usage ; 
 int full_tree ; 
 struct commit* FUNC11 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC14 (struct commit*,struct rev_info*,struct string_list*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct object_array*,struct rev_info*,struct string_list*) ; 
 scalar_t__ FUNC18 (struct commit*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ last_idnum ; 
 int mark_tags ; 
 int no_data ; 
 int /*<<< orphan*/  parse_opt_reencode_mode ; 
 int /*<<< orphan*/  parse_opt_signed_tag_mode ; 
 int /*<<< orphan*/  parse_opt_tag_of_filtered_mode ; 
 int FUNC21 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  reencode_mode ; 
 int reference_excluded_commits ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refspecs ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  revision_sources ; 
 int FUNC27 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  show_filemodify ; 
 int show_original_ids ; 
 int /*<<< orphan*/  signed_tag_mode ; 
 int /*<<< orphan*/  FUNC28 (struct string_list*,int) ; 
 int /*<<< orphan*/  tag_of_filtered_mode ; 
 int /*<<< orphan*/  tag_refs ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct option*) ; 
 int use_done_feature ; 

int FUNC30(int argc, const char **argv, const char *prefix)
{
	struct rev_info revs;
	struct object_array commits = OBJECT_ARRAY_INIT;
	struct commit *commit;
	char *export_filename = NULL,
	     *import_filename = NULL,
	     *import_filename_if_exists = NULL;
	uint32_t lastimportid;
	struct string_list refspecs_list = STRING_LIST_INIT_NODUP;
	struct string_list paths_of_changed_objects = STRING_LIST_INIT_DUP;
	struct option options[] = {
		FUNC4(0, "progress", &progress,
			    FUNC0("show progress after <n> objects")),
		FUNC2(0, "signed-tags", &signed_tag_mode, FUNC0("mode"),
			     FUNC0("select handling of signed tags"),
			     parse_opt_signed_tag_mode),
		FUNC2(0, "tag-of-filtered-object", &tag_of_filtered_mode, FUNC0("mode"),
			     FUNC0("select handling of tags that tag filtered objects"),
			     parse_opt_tag_of_filtered_mode),
		FUNC2(0, "reencode", &reencode_mode, FUNC0("mode"),
			     FUNC0("select handling of commit messages in an alternate encoding"),
			     parse_opt_reencode_mode),
		FUNC5(0, "export-marks", &export_filename, FUNC0("file"),
			     FUNC0("Dump marks to this file")),
		FUNC5(0, "import-marks", &import_filename, FUNC0("file"),
			     FUNC0("Import marks from this file")),
		FUNC5(0, "import-marks-if-exists",
			     &import_filename_if_exists,
			     FUNC0("file"),
			     FUNC0("Import marks from this file if it exists")),
		FUNC1(0, "fake-missing-tagger", &fake_missing_tagger,
			 FUNC0("Fake a tagger when tags lack one")),
		FUNC1(0, "full-tree", &full_tree,
			 FUNC0("Output full tree for each commit")),
		FUNC1(0, "use-done-feature", &use_done_feature,
			     FUNC0("Use the done feature to terminate the stream")),
		FUNC1(0, "no-data", &no_data, FUNC0("Skip output of blob data")),
		FUNC6(0, "refspec", &refspecs_list, FUNC0("refspec"),
			     FUNC0("Apply refspec to exported refs")),
		FUNC1(0, "anonymize", &anonymize, FUNC0("anonymize output")),
		FUNC1(0, "reference-excluded-parents",
			 &reference_excluded_commits, FUNC0("Reference parents which are not in fast-export stream by object id")),
		FUNC1(0, "show-original-ids", &show_original_ids,
			    FUNC0("Show original object ids of blobs/commits")),
		FUNC1(0, "mark-tags", &mark_tags,
			    FUNC0("Label tags with mark ids")),

		FUNC3()
	};

	if (argc == 1)
		FUNC29 (fast_export_usage, options);

	/* we handle encodings */
	FUNC13(git_default_config, NULL);

	FUNC26(the_repository, &revs, prefix);
	FUNC20(&revision_sources);
	revs.topo_order = 1;
	revs.sources = &revision_sources;
	revs.rewrite_parents = 1;
	argc = FUNC21(argc, argv, prefix, options, fast_export_usage,
			PARSE_OPT_KEEP_ARGV0 | PARSE_OPT_KEEP_UNKNOWN);
	argc = FUNC27(argc, argv, &revs, NULL);
	if (argc > 1)
		FUNC29 (fast_export_usage, options);

	if (refspecs_list.nr) {
		int i;

		for (i = 0; i < refspecs_list.nr; i++)
			FUNC24(&refspecs, refspecs_list.items[i].string);

		FUNC28(&refspecs_list, 1);
	}

	if (use_done_feature)
		FUNC23("feature done\n");

	if (import_filename && import_filename_if_exists)
		FUNC9(FUNC7("Cannot pass both --import-marks and --import-marks-if-exists"));
	if (import_filename)
		FUNC19(import_filename, 0);
	else if (import_filename_if_exists)
		FUNC19(import_filename_if_exists, 1);
	lastimportid = last_idnum;

	if (import_filename && revs.prune_data.nr)
		full_tree = 1;

	FUNC12(&revs.cmdline);

	if (FUNC22(&revs))
		FUNC9("revision walk setup failed");
	revs.diffopt.format_callback = show_filemodify;
	revs.diffopt.format_callback_data = &paths_of_changed_objects;
	revs.diffopt.flags.recursive = 1;
	while ((commit = FUNC11(&revs))) {
		if (FUNC18(commit)) {
			FUNC8(&commit->object, NULL, &commits);
		}
		else {
			FUNC14(commit, &revs, &paths_of_changed_objects);
			FUNC17(&commits, &revs, &paths_of_changed_objects);
		}
	}

	FUNC16(&extra_refs);
	FUNC16(&tag_refs);
	FUNC15();

	if (export_filename && lastimportid != last_idnum)
		FUNC10(export_filename);

	if (use_done_feature)
		FUNC23("done\n");

	FUNC25(&refspecs);

	return 0;
}