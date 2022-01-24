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
struct option {char* member_2; int* member_3; int member_6; int member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {scalar_t__ type; } ;
struct name_ref_data {int name_only; int tags_only; int /*<<< orphan*/  exclude_filters; int /*<<< orphan*/  ref_filters; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct commit {scalar_t__ date; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/ * name; struct object* item; } ;

/* Variables and functions */
 scalar_t__ CUTOFF_DATE_SLOP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  OPTION_SET_INT ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char*) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARSE_OPT_HIDDEN ; 
 int PARSE_OPT_NOARG ; 
 int /*<<< orphan*/  STRING_LIST_INIT_NODUP ; 
 scalar_t__ TIME_MIN ; 
 int /*<<< orphan*/  FUNC5 (struct object_array) ; 
 int /*<<< orphan*/  FUNC6 (struct object*,char const*,struct object_array*) ; 
 scalar_t__ cutoff ; 
 struct object* FUNC7 (int /*<<< orphan*/ ,struct object*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct name_ref_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct object* FUNC13 (int) ; 
 int FUNC14 () ; 
 scalar_t__ FUNC15 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  name_ref ; 
 int /*<<< orphan*/  FUNC18 (char*,struct name_ref_data*) ; 
 int /*<<< orphan*/  name_rev_usage ; 
 struct object* FUNC19 (int /*<<< orphan*/ ,struct object_id*) ; 
 int FUNC20 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rev_names ; 
 int /*<<< orphan*/  FUNC21 (struct object*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC23(int argc, const char **argv, const char *prefix)
{
	struct object_array revs = OBJECT_ARRAY_INIT;
	int all = 0, transform_stdin = 0, allow_undefined = 1, always = 0, peel_tag = 0;
	struct name_ref_data data = { 0, 0, STRING_LIST_INIT_NODUP, STRING_LIST_INIT_NODUP };
	struct option opts[] = {
		FUNC1(0, "name-only", &data.name_only, FUNC0("print only names (no SHA-1)")),
		FUNC1(0, "tags", &data.tags_only, FUNC0("only use tags to name the commits")),
		FUNC4(0, "refs", &data.ref_filters, FUNC0("pattern"),
				   FUNC0("only use refs matching <pattern>")),
		FUNC4(0, "exclude", &data.exclude_filters, FUNC0("pattern"),
				   FUNC0("ignore refs matching <pattern>")),
		FUNC3(""),
		FUNC1(0, "all", &all, FUNC0("list all commits reachable from all refs")),
		FUNC1(0, "stdin", &transform_stdin, FUNC0("read from stdin")),
		FUNC1(0, "undefined", &allow_undefined, FUNC0("allow to print `undefined` names (default)")),
		FUNC1(0, "always",     &always,
			   FUNC0("show abbreviated commit object as fallback")),
		{
			/* A Hidden OPT_BOOL */
			OPTION_SET_INT, 0, "peel-tag", peel_tag, NULL,
			FUNC0("dereference tags in the input (internal use)"),
			PARSE_OPT_NOARG | PARSE_OPT_HIDDEN, NULL, 1,
		},
		FUNC2(),
	};

	FUNC17(&rev_names);
	FUNC16(git_default_config, NULL);
	argc = FUNC20(argc, argv, prefix, opts, name_rev_usage, 0);
	if (all + transform_stdin + !!argc > 1) {
		FUNC8("Specify either a list, or --all, not both!");
		FUNC22(name_rev_usage, opts);
	}
	if (all || transform_stdin)
		cutoff = 0;

	for (; argc; argc--, argv++) {
		struct object_id oid;
		struct object *object;
		struct commit *commit;

		if (FUNC15(*argv, &oid)) {
			FUNC12(stderr, "Could not get sha1 for %s. Skipping.\n",
					*argv);
			continue;
		}

		commit = NULL;
		object = FUNC19(the_repository, &oid);
		if (object) {
			struct object *peeled = FUNC7(the_repository,
							  object, *argv, 0);
			if (peeled && peeled->type == OBJ_COMMIT)
				commit = (struct commit *)peeled;
		}

		if (!object) {
			FUNC12(stderr, "Could not get object for %s. Skipping.\n",
					*argv);
			continue;
		}

		if (commit) {
			if (cutoff > commit->date)
				cutoff = commit->date;
		}

		if (peel_tag) {
			if (!commit) {
				FUNC12(stderr, "Could not get commit for %s. Skipping.\n",
					*argv);
				continue;
			}
			object = (struct object *)commit;
		}
		FUNC6(object, *argv, &revs);
	}

	if (cutoff) {
		/* check for undeflow */
		if (cutoff > TIME_MIN + CUTOFF_DATE_SLOP)
			cutoff = cutoff - CUTOFF_DATE_SLOP;
		else
			cutoff = TIME_MIN;
	}
	FUNC11(name_ref, &data);

	if (transform_stdin) {
		char buffer[2048];

		while (!FUNC9(stdin)) {
			char *p = FUNC10(buffer, sizeof(buffer), stdin);
			if (!p)
				break;
			FUNC18(p, &data);
		}
	} else if (all) {
		int i, max;

		max = FUNC14();
		for (i = 0; i < max; i++) {
			struct object *obj = FUNC13(i);
			if (!obj || obj->type != OBJ_COMMIT)
				continue;
			FUNC21(obj, NULL,
				  always, allow_undefined, data.name_only);
		}
	} else {
		int i;
		for (i = 0; i < revs.nr; i++)
			FUNC21(revs.objects[i].item, revs.objects[i].name,
				  always, allow_undefined, data.name_only);
	}

	FUNC5(revs);
	return 0;
}