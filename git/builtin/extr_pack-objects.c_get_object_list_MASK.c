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
struct setup_revision_opt {int allow_exclude_promisor_objects; } ;
struct rev_info {int ignore_missing_links; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  REVARG_CANNOT_BE_FILENAME ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct rev_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_options ; 
 scalar_t__ fn_show_object ; 
 int /*<<< orphan*/  FUNC6 (struct rev_info*) ; 
 scalar_t__ FUNC7 (char*,struct object_id*) ; 
 scalar_t__ FUNC8 (char*,struct rev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ keep_unreachable ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct rev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ pack_loose_unreachable ; 
 scalar_t__ FUNC14 (struct rev_info*) ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  recent_objects ; 
 int /*<<< orphan*/  record_recent_commit ; 
 int /*<<< orphan*/  record_recent_object ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ save_commit_buffer ; 
 int /*<<< orphan*/  FUNC17 (int,char const**,struct rev_info*,struct setup_revision_opt*) ; 
 int /*<<< orphan*/  show_commit ; 
 int /*<<< orphan*/  show_edge ; 
 scalar_t__ show_object ; 
 int /*<<< orphan*/  sparse ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int FUNC20 (char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC21 (struct rev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ unpack_unreachable ; 
 scalar_t__ unpack_unreachable_expiration ; 
 scalar_t__ use_bitmap_index ; 
 scalar_t__ use_delta_islands ; 
 int warn_on_object_refname_ambiguity ; 
 scalar_t__ write_bitmap_index ; 

__attribute__((used)) static void FUNC23(int ac, const char **av)
{
	struct rev_info revs;
	struct setup_revision_opt s_r_opt = {
		.allow_exclude_promisor_objects = 1,
	};
	char line[1000];
	int flags = 0;
	int save_warning;

	FUNC16(the_repository, &revs, NULL);
	save_commit_buffer = 0;
	FUNC17(ac, av, &revs, &s_r_opt);

	/* make sure shallows are read */
	FUNC9(the_repository);

	save_warning = warn_on_object_refname_ambiguity;
	warn_on_object_refname_ambiguity = 0;

	while (FUNC5(line, sizeof(line), stdin) != NULL) {
		int len = FUNC20(line);
		if (len && line[len - 1] == '\n')
			line[--len] = 0;
		if (!len)
			break;
		if (*line == '-') {
			if (!FUNC19(line, "--not")) {
				flags ^= UNINTERESTING;
				write_bitmap_index = 0;
				continue;
			}
			if (FUNC18(line, "--shallow ")) {
				struct object_id oid;
				if (FUNC7(line + 10, &oid))
					FUNC4("not an SHA-1 '%s'", line + 10);
				FUNC15(the_repository, &oid);
				use_bitmap_index = 0;
				continue;
			}
			FUNC4(FUNC0("not a rev '%s'"), line);
		}
		if (FUNC8(line, &revs, flags, REVARG_CANNOT_BE_FILENAME))
			FUNC4(FUNC0("bad revision '%s'"), line);
	}

	warn_on_object_refname_ambiguity = save_warning;

	if (use_bitmap_index && !FUNC6(&revs))
		return;

	if (use_delta_islands)
		FUNC10(the_repository, progress);

	if (FUNC14(&revs))
		FUNC4(FUNC0("revision walk setup failed"));
	FUNC12(&revs, show_edge, sparse);

	if (!fn_show_object)
		fn_show_object = show_object;
	FUNC22(&filter_options, &revs,
				      show_commit, fn_show_object, NULL,
				      NULL);

	if (unpack_unreachable_expiration) {
		revs.ignore_missing_links = 1;
		if (FUNC3(&revs,
				unpack_unreachable_expiration))
			FUNC4(FUNC0("unable to add recent objects"));
		if (FUNC14(&revs))
			FUNC4(FUNC0("revision walk setup failed"));
		FUNC21(&revs, record_recent_commit,
				     record_recent_object, NULL);
	}

	if (keep_unreachable)
		FUNC1();
	if (pack_loose_unreachable)
		FUNC2();
	if (unpack_unreachable)
		FUNC11();

	FUNC13(&recent_objects);
}