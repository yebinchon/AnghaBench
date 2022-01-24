#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct string_list_item {int /*<<< orphan*/  string; struct branch_info* util; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char const* buf; } ;
struct remote {int /*<<< orphan*/  name; } ;
struct option {int dummy; } ;
struct known_remotes {struct remote* to_delete; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct branches_for_remote {struct remote* remote; struct known_remotes* keep; struct string_list* skipped; struct string_list* branches; } ;
struct branch_info {scalar_t__ remote_name; } ;
typedef  int /*<<< orphan*/  cb_data ;
struct TYPE_4__ {int nr; struct string_list_item* items; } ;
struct TYPE_3__ {char* string; } ;

/* Variables and functions */
 int CONFIG_NOTHING_SET ; 
 struct option FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  add_branch_for_removal ; 
 int /*<<< orphan*/  add_known_remote ; 
 TYPE_2__ branch_list ; 
 int /*<<< orphan*/  builtin_remote_rm_usage ; 
 int FUNC3 (char*,struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct branches_for_remote*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct known_remotes*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct branches_for_remote*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct remote* FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct remote*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC22(int argc, const char **argv)
{
	struct option options[] = {
		FUNC0()
	};
	struct remote *remote;
	struct strbuf buf = STRBUF_INIT;
	struct known_remotes known_remotes = { NULL, NULL };
	struct string_list branches = STRING_LIST_INIT_DUP;
	struct string_list skipped = STRING_LIST_INIT_DUP;
	struct branches_for_remote cb_data;
	int i, result;

	FUNC12(&cb_data, 0, sizeof(cb_data));
	cb_data.branches = &branches;
	cb_data.skipped = &skipped;
	cb_data.keep = &known_remotes;

	if (argc != 2)
		FUNC21(builtin_remote_rm_usage, options);

	remote = FUNC14(argv[1]);
	if (!FUNC15(remote, 1))
		FUNC4(FUNC2("No such remote: '%s'"), argv[1]);

	known_remotes.to_delete = remote;
	FUNC7(add_known_remote, &known_remotes);

	FUNC13();
	for (i = 0; i < branch_list.nr; i++) {
		struct string_list_item *item = branch_list.items + i;
		struct branch_info *info = item->util;
		if (info->remote_name && !FUNC19(info->remote_name, remote->name)) {
			const char *keys[] = { "remote", "merge", NULL }, **k;
			for (k = keys; *k; k++) {
				FUNC18(&buf);
				FUNC16(&buf, "branch.%s.%s",
						item->string, *k);
				result = FUNC11(buf.buf, NULL);
				if (result && result != CONFIG_NOTHING_SET)
					FUNC4(FUNC2("could not unset '%s'"), buf.buf);
			}
		}
	}

	/*
	 * We cannot just pass a function to for_each_ref() which deletes
	 * the branches one by one, since for_each_ref() relies on cached
	 * refs, which are invalidated when deleting a branch.
	 */
	cb_data.remote = remote;
	result = FUNC6(add_branch_for_removal, &cb_data);
	FUNC17(&buf);

	if (!result)
		result = FUNC3("remote: remove", &branches, REF_NO_DEREF);
	FUNC20(&branches, 0);

	if (skipped.nr) {
		FUNC9(stderr,
			   FUNC1("Note: A branch outside the refs/remotes/ hierarchy was not removed;\n"
			      "to delete it, use:",
			      "Note: Some branches outside the refs/remotes/ hierarchy were not removed;\n"
			      "to delete them, use:",
			      skipped.nr));
		for (i = 0; i < skipped.nr; i++)
			FUNC8(stderr, "  git branch -d %s\n",
				skipped.items[i].string);
	}
	FUNC20(&skipped, 0);

	if (!result) {
		FUNC16(&buf, "remote.%s", remote->name);
		if (FUNC10(buf.buf, NULL) < 1)
			return FUNC5(FUNC2("Could not remove config section '%s'"), buf.buf);
	}

	return result;
}