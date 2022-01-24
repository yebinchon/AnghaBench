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
struct node {int /*<<< orphan*/ * n_location; int /*<<< orphan*/  n_config_line; int /*<<< orphan*/  n_config_file; } ;
struct autofs_daemon_request {char* adr_from; char* adr_path; char* adr_prefix; char* adr_key; char* adr_options; int /*<<< orphan*/  adr_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,char*,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  exit_callback ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct node*,char*) ; 
 int FUNC11 (struct node*) ; 
 int /*<<< orphan*/  FUNC12 (struct node*,char*) ; 
 struct node* FUNC13 (struct node*,char*) ; 
 int FUNC14 (struct node*) ; 
 struct node* FUNC15 (struct node*,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 struct node* FUNC16 () ; 
 char* FUNC17 (struct node*) ; 
 int /*<<< orphan*/  FUNC18 (struct node*,char const*,char*,int*) ; 
 char* FUNC19 (char*,char**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_id ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC23(const struct autofs_daemon_request *adr, char *cmdline_options,
    bool incomplete_hierarchy)
{
	const char *map;
	struct node *root, *parent, *node;
	FILE *f;
	char *key, *options, *fstype, *nobrowse, *retrycnt, *tmp;
	int error;
	bool wildcards;

	FUNC8("got request %d: from %s, path %s, prefix \"%s\", "
	    "key \"%s\", options \"%s\"", adr->adr_id, adr->adr_from,
	    adr->adr_path, adr->adr_prefix, adr->adr_key, adr->adr_options);

	/*
	 * Try to notify the kernel about any problems.
	 */
	request_id = adr->adr_id;
	FUNC1(exit_callback);

	if (FUNC22(adr->adr_from, "map ", 4) != 0) {
		FUNC9(1, "invalid mountfrom \"%s\"; failing request",
		    adr->adr_from);
	}

	map = adr->adr_from + 4; /* 4 for strlen("map "); */
	root = FUNC16();
	if (adr->adr_prefix[0] == '\0' || FUNC21(adr->adr_prefix, "/") == 0) {
		/*
		 * Direct map.  autofs(4) doesn't have a way to determine
		 * correct map key, but since it's a direct map, we can just
		 * use adr_path instead.
		 */
		parent = root;
		key = FUNC4(adr->adr_path);
	} else {
		/*
		 * Indirect map.
		 */
		parent = FUNC15(root, FUNC4(adr->adr_prefix),
		    NULL,  FUNC4(map),
		    FUNC4("[kernel request]"), lineno);

		if (adr->adr_key[0] == '\0')
			key = NULL;
		else
			key = FUNC4(adr->adr_key);
	}

	/*
	 * "Wildcards" here actually means "make autofs(4) request
	 * automountd(8) action if the node being looked up does not
	 * exist, even though the parent is marked as cached".  This
	 * needs to be done for maps with wildcard entries, but also
	 * for special and executable maps.
	 */
	FUNC18(parent, map, key, &wildcards);
	if (!wildcards)
		wildcards = FUNC14(parent);
	if (wildcards)
		FUNC8("map may contain wildcard entries");
	else
		FUNC8("map does not contain wildcard entries");

	if (key != NULL)
		FUNC12(root, key);

	node = FUNC13(root, adr->adr_path);
	if (node == NULL) {
		FUNC9(1, "map %s does not contain key for \"%s\"; "
		    "failing mount", map, adr->adr_path);
	}

	options = FUNC17(node);

	/*
	 * Append options from auto_master.
	 */
	options = FUNC5(options, ',', adr->adr_options);

	/*
	 * Prepend options passed via automountd(8) command line.
	 */
	options = FUNC5(cmdline_options, ',', options);

	if (node->n_location == NULL) {
		FUNC8("found node defined at %s:%d; not a mountpoint",
		    node->n_config_file, node->n_config_line);

		nobrowse = FUNC19("nobrowse", &options);
		if (nobrowse != NULL && key == NULL) {
			FUNC8("skipping map %s due to \"nobrowse\" "
			    "option; exiting", map);
			FUNC7(0, true);

			/*
			 * Exit without calling exit_callback().
			 */
			FUNC20(0);
		}

		/*
		 * Not a mountpoint; create directories in the autofs mount
		 * and complete the request.
		 */
		FUNC6(node, incomplete_hierarchy);

		if (incomplete_hierarchy && key != NULL) {
			/*
			 * We still need to create the single subdirectory
			 * user is trying to access.
			 */
			tmp = FUNC5(adr->adr_path, '/', key);
			node = FUNC13(root, tmp);
			if (node != NULL)
				FUNC6(node, false);
		}

		FUNC8("nothing to mount; exiting");
		FUNC7(0, wildcards);

		/*
		 * Exit without calling exit_callback().
		 */
		FUNC20(0);
	}

	FUNC8("found node defined at %s:%d; it is a mountpoint",
	    node->n_config_file, node->n_config_line);

	if (key != NULL)
		FUNC10(node, key);
	error = FUNC11(node);
	if (error != 0) {
		FUNC9(1, "variable expansion failed for %s; "
		    "failing mount", adr->adr_path);
	}

	/*
	 * Append "automounted".
	 */
	options = FUNC5(options, ',', "automounted");

	/*
	 * Remove "nobrowse", mount(8) doesn't understand it.
	 */
	FUNC19("nobrowse", &options);

	/*
	 * Figure out fstype.
	 */
	fstype = FUNC19("fstype=", &options);
	if (fstype == NULL) {
		FUNC8("fstype not specified in options; "
		    "defaulting to \"nfs\"");
		fstype = FUNC4("nfs");
	}

	if (FUNC21(fstype, "nfs") == 0) {
		/*
		 * The mount_nfs(8) command defaults to retry undefinitely.
		 * We do not want that behaviour, because it leaves mount_nfs(8)
		 * instances and automountd(8) children hanging forever.
		 * Disable retries unless the option was passed explicitly.
		 */
		retrycnt = FUNC19("retrycnt=", &options);
		if (retrycnt == NULL) {
			FUNC8("retrycnt not specified in options; "
			    "defaulting to 1");
			options = FUNC5(options, ',', "retrycnt=1");
		} else {
			options = FUNC5(options, ',',
			    FUNC5("retrycnt", '=', retrycnt));
		}
	}

	f = FUNC3("mount", "-t", fstype, "-o", options,
	    node->n_location, adr->adr_path, NULL);
	FUNC0(f != NULL);
	error = FUNC2(f);
	if (error != 0)
		FUNC9(1, "mount failed");

	FUNC8("mount done; exiting");
	FUNC7(0, wildcards);

	/*
	 * Exit without calling exit_callback().
	 */
	FUNC20(0);
}