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
struct transport {struct string_list* server_options; } ;
struct string_list {scalar_t__ nr; } ;
struct remote {char** url; int /*<<< orphan*/  url_nr; } ;
struct ref_sorting {int dummy; } ;
struct ref_array_item {char* symref; char* refname; int /*<<< orphan*/  objectname; } ;
struct ref_array {int nr; struct ref_array_item** items; } ;
struct ref {int /*<<< orphan*/  symref; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; struct ref* next; } ;
struct option {char* member_2; char const** member_3; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct argv_array {int dummy; } ;
typedef  int /*<<< orphan*/  ref_array ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_STRING ; 
 struct option FUNC1 (char,char*,unsigned int*,int /*<<< orphan*/ ,unsigned int) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (struct ref_sorting**) ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct option FUNC6 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC7 (char,char*,struct string_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC8 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_HIDDEN ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 unsigned int REF_HEADS ; 
 unsigned int REF_NORMAL ; 
 unsigned int REF_TAGS ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  TRANS_OPT_UPLOADPACK ; 
 int /*<<< orphan*/  FUNC9 (struct ref_sorting*) ; 
 int /*<<< orphan*/  FUNC10 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ref const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ls_remote_usage ; 
 int /*<<< orphan*/  FUNC14 (struct ref_array*,int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct ref_array*) ; 
 struct ref_array_item* FUNC19 (struct ref_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ref_sorting*,struct ref_array*) ; 
 struct remote* FUNC21 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC22 (char const**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct transport*) ; 
 struct transport* FUNC24 (struct remote*,int /*<<< orphan*/ *) ; 
 struct ref* FUNC25 (struct transport*,struct argv_array*) ; 
 int /*<<< orphan*/  FUNC26 (struct transport*,int /*<<< orphan*/ ,char const*) ; 
 char** FUNC27 (int,int) ; 
 char* FUNC28 (int /*<<< orphan*/ ) ; 
 char* FUNC29 (char*,char const*) ; 

int FUNC30(int argc, const char **argv, const char *prefix)
{
	const char *dest = NULL;
	unsigned flags = 0;
	int get_url = 0;
	int quiet = 0;
	int status = 0;
	int show_symref_target = 0;
	const char *uploadpack = NULL;
	const char **pattern = NULL;
	struct argv_array ref_prefixes = ARGV_ARRAY_INIT;
	int i;
	struct string_list server_options = STRING_LIST_INIT_DUP;

	struct remote *remote;
	struct transport *transport;
	const struct ref *ref;
	struct ref_array ref_array;
	static struct ref_sorting *sorting = NULL, **sorting_tail = &sorting;

	struct option options[] = {
		FUNC8(&quiet, FUNC0("do not print remote URL")),
		FUNC6(0, "upload-pack", &uploadpack, FUNC0("exec"),
			   FUNC0("path of git-upload-pack on the remote host")),
		{ OPTION_STRING, 0, "exec", &uploadpack, FUNC0("exec"),
			   FUNC0("path of git-upload-pack on the remote host"),
			   PARSE_OPT_HIDDEN },
		FUNC1('t', "tags", &flags, FUNC0("limit to tags"), REF_TAGS),
		FUNC1('h', "heads", &flags, FUNC0("limit to heads"), REF_HEADS),
		FUNC1(0, "refs", &flags, FUNC0("do not show peeled tags"), REF_NORMAL),
		FUNC2(0, "get-url", &get_url,
			 FUNC0("take url.<base>.insteadOf into account")),
		FUNC4(sorting_tail),
		FUNC5(0, "exit-code", &status,
			      FUNC0("exit with exit code 2 if no matching refs are found"),
			      2, PARSE_OPT_NOCOMPLETE),
		FUNC2(0, "symref", &show_symref_target,
			 FUNC0("show underlying ref in addition to the object pointed by it")),
		FUNC7('o', "server-option", &server_options, FUNC0("server-specific"), FUNC0("option to transmit")),
		FUNC3()
	};

	FUNC14(&ref_array, 0, sizeof(ref_array));

	argc = FUNC16(argc, argv, prefix, options, ls_remote_usage,
			     PARSE_OPT_STOP_AT_NON_OPTION);
	dest = argv[0];

	if (argc > 1) {
		int i;
		pattern = FUNC27(argc, sizeof(const char *));
		for (i = 1; i < argc; i++) {
			pattern[i - 1] = FUNC29("*/%s", argv[i]);
		}
	}

	if (flags & REF_TAGS)
		FUNC10(&ref_prefixes, "refs/tags/");
	if (flags & REF_HEADS)
		FUNC10(&ref_prefixes, "refs/heads/");

	remote = FUNC21(dest);
	if (!remote) {
		if (dest)
			FUNC12("bad repository '%s'", dest);
		FUNC12("No remote configured to list refs from.");
	}
	if (!remote->url_nr)
		FUNC12("remote %s has no configured URL", dest);

	if (get_url) {
		FUNC17("%s\n", *remote->url);
		FUNC9(sorting);
		return 0;
	}

	transport = FUNC24(remote, NULL);
	if (uploadpack != NULL)
		FUNC26(transport, TRANS_OPT_UPLOADPACK, uploadpack);
	if (server_options.nr)
		transport->server_options = &server_options;

	ref = FUNC25(transport, &ref_prefixes);
	if (FUNC23(transport)) {
		FUNC9(sorting);
		return 1;
	}

	if (!dest && !quiet)
		FUNC13(stderr, "From %s\n", *remote->url);
	for ( ; ref; ref = ref->next) {
		struct ref_array_item *item;
		if (!FUNC11(ref, flags))
			continue;
		if (!FUNC22(pattern, ref->name))
			continue;
		item = FUNC19(&ref_array, ref->name, &ref->old_oid);
		item->symref = FUNC28(ref->symref);
	}

	if (sorting)
		FUNC20(sorting, &ref_array);

	for (i = 0; i < ref_array.nr; i++) {
		const struct ref_array_item *ref = ref_array.items[i];
		if (show_symref_target && ref->symref)
			FUNC17("ref: %s\t%s\n", ref->symref, ref->refname);
		FUNC17("%s\t%s\n", FUNC15(&ref->objectname), ref->refname);
		status = 0; /* we found something */
	}

	FUNC9(sorting);
	FUNC18(&ref_array);
	return status;
}