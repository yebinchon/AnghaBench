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
typedef  int /*<<< orphan*/ * node_p ;
typedef  int /*<<< orphan*/ * hook_p ;
typedef  int /*<<< orphan*/  fullpath ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int NG_PATHSIZ ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (char*,char**,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 

int
FUNC14(node_p here, const char *address, node_p *destp,
    hook_p *lasthook)
{
	char    fullpath[NG_PATHSIZ];
	char   *nodename, *path;
	node_p  node, oldnode;

	/* Initialize */
	if (destp == NULL) {
		FUNC9();
		return EINVAL;
	}
	*destp = NULL;

	/* Make a writable copy of address for ng_path_parse() */
	FUNC13(fullpath, address, sizeof(fullpath) - 1);
	fullpath[sizeof(fullpath) - 1] = '\0';

	/* Parse out node and sequence of hooks */
	if (FUNC12(fullpath, &nodename, &path, NULL) < 0) {
		FUNC9();
		return EINVAL;
	}

	/*
	 * For an absolute address, jump to the starting node.
	 * Note that this holds a reference on the node for us.
	 * Don't forget to drop the reference if we don't need it.
	 */
	if (nodename) {
		node = FUNC11(here, nodename);
		if (node == NULL) {
			FUNC9();
			return (ENOENT);
		}
	} else {
		if (here == NULL) {
			FUNC9();
			return (EINVAL);
		}
		node = here;
		FUNC4(node);
	}

	if (path == NULL) {
		if (lasthook != NULL)
			*lasthook = NULL;
		*destp = node;
		return (0);
	}

	/*
	 * Now follow the sequence of hooks
	 *
	 * XXXGL: The path may demolish as we go the sequence, but if
	 * we hold the topology mutex at critical places, then, I hope,
	 * we would always have valid pointers in hand, although the
	 * path behind us may no longer exist.
	 */
	for (;;) {
		hook_p hook;
		char *segment;

		/*
		 * Break out the next path segment. Replace the dot we just
		 * found with a NUL; "path" points to the next segment (or the
		 * NUL at the end).
		 */
		for (segment = path; *path != '\0'; path++) {
			if (*path == '.') {
				*path++ = '\0';
				break;
			}
		}

		/* We have a segment, so look for a hook by that name */
		hook = FUNC10(node, segment);

		FUNC7();
		/* Can't get there from here... */
		if (hook == NULL || FUNC1(hook) == NULL ||
		    FUNC0(hook) ||
		    FUNC0(FUNC1(hook))) {
			FUNC9();
			FUNC5(node);
			FUNC8();
			return (ENOENT);
		}

		/*
		 * Hop on over to the next node
		 * XXX
		 * Big race conditions here as hooks and nodes go away
		 * *** Idea.. store an ng_ID_t in each hook and use that
		 * instead of the direct hook in this crawl?
		 */
		oldnode = node;
		if ((node = FUNC6(hook)))
			FUNC4(node);	/* XXX RACE */
		FUNC5(oldnode);	/* XXX another race */
		if (FUNC3(node)) {
			FUNC5(node);	/* XXX more races */
			FUNC8();
			FUNC9();
			return (ENXIO);
		}

		if (*path == '\0') {
			if (lasthook != NULL) {
				if (hook != NULL) {
					*lasthook = FUNC1(hook);
					FUNC2(*lasthook);
				} else
					*lasthook = NULL;
			}
			FUNC8();
			*destp = node;
			return (0);
		}
		FUNC8();
	}
}