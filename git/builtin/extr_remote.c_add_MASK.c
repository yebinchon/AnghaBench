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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct remote {int dummy; } ;
struct option {char* member_2; unsigned int* member_3; char* member_4; int member_6; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 unsigned int MIRROR_FETCH ; 
 unsigned int MIRROR_NONE ; 
 unsigned int MIRROR_PUSH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC1 (float,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC4 (char,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (char,char*,struct string_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARSE_OPT_COMP_ARG ; 
 int PARSE_OPT_OPTARG ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int TAGS_DEFAULT ; 
 int TAGS_SET ; 
 int TAGS_UNSET ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned int,struct strbuf*) ; 
 int /*<<< orphan*/  builtin_remote_add_usage ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  parse_mirror_opt ; 
 int FUNC13 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct remote* FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (struct remote*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(int argc, const char **argv)
{
	int fetch = 0, fetch_tags = TAGS_DEFAULT;
	unsigned mirror = MIRROR_NONE;
	struct string_list track = STRING_LIST_INIT_NODUP;
	const char *master = NULL;
	struct remote *remote;
	struct strbuf buf = STRBUF_INIT, buf2 = STRBUF_INIT;
	const char *name, *url;
	int i;

	struct option options[] = {
		FUNC1('f', "fetch", &fetch, FUNC0("fetch the remote branches")),
		FUNC3(0, "tags", &fetch_tags,
			    FUNC0("import all tags and associated objects when fetching"),
			    TAGS_SET),
		FUNC3(0, NULL, &fetch_tags,
			    FUNC0("or do not fetch any tag at all (--no-tags)"), TAGS_UNSET),
		FUNC5('t', "track", &track, FUNC0("branch"),
				FUNC0("branch(es) to track")),
		FUNC4('m', "master", &master, FUNC0("branch"), FUNC0("master branch")),
		{ OPTION_CALLBACK, 0, "mirror", &mirror, "(push|fetch)",
			FUNC0("set up remote as a mirror to push to or fetch from"),
			PARSE_OPT_OPTARG | PARSE_OPT_COMP_ARG, parse_mirror_opt },
		FUNC2()
	};

	argc = FUNC13(argc, argv, NULL, options, builtin_remote_add_usage,
			     0);

	if (argc != 2)
		FUNC21(builtin_remote_add_usage, options);

	if (mirror && master)
		FUNC9(FUNC6("specifying a master branch makes no sense with --mirror"));
	if (mirror && !(mirror & MIRROR_FETCH) && track.nr)
		FUNC9(FUNC6("specifying branches to track makes sense only with fetch mirrors"));

	name = argv[0];
	url = argv[1];

	remote = FUNC14(name);
	if (FUNC15(remote, 1))
		FUNC9(FUNC6("remote %s already exists."), name);

	FUNC16(&buf2, "refs/heads/test:refs/remotes/%s/test", name);
	if (!FUNC22(buf2.buf))
		FUNC9(FUNC6("'%s' is not a valid remote name"), name);

	FUNC16(&buf, "remote.%s.url", name);
	FUNC12(buf.buf, url);

	if (!mirror || mirror & MIRROR_FETCH) {
		FUNC18(&buf);
		FUNC16(&buf, "remote.%s.fetch", name);
		if (track.nr == 0)
			FUNC19(&track, "*");
		for (i = 0; i < track.nr; i++) {
			FUNC7(buf.buf, track.items[i].string,
				   name, mirror, &buf2);
		}
	}

	if (mirror & MIRROR_PUSH) {
		FUNC18(&buf);
		FUNC16(&buf, "remote.%s.mirror", name);
		FUNC12(buf.buf, "true");
	}

	if (fetch_tags != TAGS_DEFAULT) {
		FUNC18(&buf);
		FUNC16(&buf, "remote.%s.tagopt", name);
		FUNC12(buf.buf,
			       fetch_tags == TAGS_SET ? "--tags" : "--no-tags");
	}

	if (fetch && FUNC11(name))
		return 1;

	if (master) {
		FUNC18(&buf);
		FUNC16(&buf, "refs/remotes/%s/HEAD", name);

		FUNC18(&buf2);
		FUNC16(&buf2, "refs/remotes/%s/%s", name, master);

		if (FUNC8(buf.buf, buf2.buf, "remote add"))
			return FUNC10(FUNC6("Could not setup master '%s'"), master);
	}

	FUNC17(&buf);
	FUNC17(&buf2);
	FUNC20(&track, 0);

	return 0;
}