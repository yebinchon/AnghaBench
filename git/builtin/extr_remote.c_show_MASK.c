#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct string_list {scalar_t__ nr; int /*<<< orphan*/  items; } ;
struct TYPE_5__ {int nr; TYPE_1__* items; } ;
struct show_info {struct string_list* list; struct string_list push; scalar_t__ width2; scalar_t__ width; TYPE_3__* remote; scalar_t__ any_rebase; struct string_list stale; struct string_list tracked; struct string_list new_refs; TYPE_2__ heads; struct show_info* states; } ;
struct ref_states {struct string_list* list; struct string_list push; scalar_t__ width2; scalar_t__ width; TYPE_3__* remote; scalar_t__ any_rebase; struct string_list stale; struct string_list tracked; struct string_list new_refs; TYPE_2__ heads; struct ref_states* states; } ;
struct option {int dummy; } ;
typedef  int /*<<< orphan*/  states ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_6__ {int url_nr; char** url; int pushurl_nr; char** pushurl; scalar_t__ mirror; } ;
struct TYPE_4__ {char* string; } ;

/* Variables and functions */
 int GET_HEAD_NAMES ; 
 int GET_PUSH_REF_STATES ; 
 int GET_REF_STATES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*,scalar_t__) ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  add_local_to_show_info ; 
 int /*<<< orphan*/  add_push_to_show_info ; 
 int /*<<< orphan*/  add_remote_to_show_info ; 
 struct string_list branch_list ; 
 int /*<<< orphan*/  builtin_remote_show_usage ; 
 int /*<<< orphan*/  cmp_string_with_push ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ ,struct show_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct show_info*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,struct show_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct show_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  show_local_info_item ; 
 int /*<<< orphan*/  show_push_info_item ; 
 int /*<<< orphan*/  show_remote_info_item ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(int argc, const char **argv)
{
	int no_query = 0, result = 0, query_flag = 0;
	struct option options[] = {
		FUNC1('n', NULL, &no_query, FUNC0("do not query remotes")),
		FUNC2()
	};
	struct ref_states states;
	struct string_list info_list = STRING_LIST_INIT_NODUP;
	struct show_info info;

	argc = FUNC10(argc, argv, NULL, options, builtin_remote_show_usage,
			     0);

	if (argc < 1)
		return FUNC13();

	if (!no_query)
		query_flag = (GET_REF_STATES | GET_HEAD_NAMES | GET_PUSH_REF_STATES);

	FUNC9(&states, 0, sizeof(states));
	FUNC9(&info, 0, sizeof(info));
	info.states = &states;
	info.list = &info_list;
	for (; argc; argc--, argv++) {
		int i;
		const char **url;
		int url_nr;

		FUNC8(*argv, &states, query_flag);

		FUNC12(FUNC5("* remote %s"), *argv);
		FUNC12(FUNC5("  Fetch URL: %s"), states.remote->url_nr > 0 ?
		       states.remote->url[0] : FUNC5("(no URL)"));
		if (states.remote->pushurl_nr) {
			url = states.remote->pushurl;
			url_nr = states.remote->pushurl_nr;
		} else {
			url = states.remote->url;
			url_nr = states.remote->url_nr;
		}
		for (i = 0; i < url_nr; i++)
			/*
			 * TRANSLATORS: the colon ':' should align
			 * with the one in " Fetch URL: %s"
			 * translation.
			 */
			FUNC12(FUNC5("  Push  URL: %s"), url[i]);
		if (!i)
			FUNC12(FUNC5("  Push  URL: %s"), FUNC5("(no URL)"));
		if (no_query)
			FUNC12(FUNC5("  HEAD branch: %s"), FUNC5("(not queried)"));
		else if (!states.heads.nr)
			FUNC12(FUNC5("  HEAD branch: %s"), FUNC5("(unknown)"));
		else if (states.heads.nr == 1)
			FUNC12(FUNC5("  HEAD branch: %s"), states.heads.items[0].string);
		else {
			FUNC11(FUNC5("  HEAD branch (remote HEAD is ambiguous,"
				 " may be one of the following):\n"));
			for (i = 0; i < states.heads.nr; i++)
				FUNC11("    %s\n", states.heads.items[i].string);
		}

		/* remote branch info */
		info.width = 0;
		FUNC6(&states.new_refs, add_remote_to_show_info, &info);
		FUNC6(&states.tracked, add_remote_to_show_info, &info);
		FUNC6(&states.stale, add_remote_to_show_info, &info);
		if (info.list->nr)
			FUNC12(FUNC4("  Remote branch:%s",
				     "  Remote branches:%s",
				     info.list->nr),
				  no_query ? FUNC5(" (status not queried)") : "");
		FUNC6(info.list, show_remote_info_item, &info);
		FUNC14(info.list, 0);

		/* git pull info */
		info.width = 0;
		info.any_rebase = 0;
		FUNC6(&branch_list, add_local_to_show_info, &info);
		if (info.list->nr)
			FUNC12(FUNC4("  Local branch configured for 'git pull':",
				     "  Local branches configured for 'git pull':",
				     info.list->nr));
		FUNC6(info.list, show_local_info_item, &info);
		FUNC14(info.list, 0);

		/* git push info */
		if (states.remote->mirror)
			FUNC12(FUNC5("  Local refs will be mirrored by 'git push'"));

		info.width = info.width2 = 0;
		FUNC6(&states.push, add_push_to_show_info, &info);
		FUNC3(info.list->items, info.list->nr, cmp_string_with_push);
		if (info.list->nr)
			FUNC12(FUNC4("  Local ref configured for 'git push'%s:",
				     "  Local refs configured for 'git push'%s:",
				     info.list->nr),
				  no_query ? FUNC5(" (status not queried)") : "");
		FUNC6(info.list, show_push_info_item, &info);
		FUNC14(info.list, 0);

		FUNC7(&states);
	}

	return result;
}