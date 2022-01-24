#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_10__ {char const* name; struct TYPE_10__* first; struct TYPE_10__* child; struct TYPE_10__* next; int /*<<< orphan*/  type; struct TYPE_10__* parent; } ;
typedef  TYPE_1__ fsnode ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  dupsok ; 
 TYPE_1__* mtree_current ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 TYPE_1__ mtree_global ; 
 TYPE_1__* mtree_root ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC9(FILE *fp, bool def, const char *name)
{
	fsnode *last, *node, *parent;
	u_int type;
	int error;

	FUNC2(name[0] != '\0');

	/*
	 * Treat '..' specially, because it only changes our current
	 * directory. We don't create a node for it. We simply ignore
	 * any keywords that may appear on the line as well.
	 * Going up a directory is a little non-obvious. A directory
	 * node has a corresponding '.' child. The parent of '.' is
	 * not the '.' node of the parent directory, but the directory
	 * node within the parent to which the child relates. However,
	 * going up a directory means we need to find the '.' node to
	 * which the directoy node is linked.  This we can do via the
	 * first * pointer, because '.' is always the first entry in a
	 * directory.
	 */
	if (FUNC1(name)) {
		/* This deals with NULL pointers as well. */
		if (mtree_current == mtree_root) {
			FUNC6("ignoring .. in root directory");
			return (0);
		}

		node = mtree_current;

		FUNC2(node != NULL);
		FUNC2(FUNC0(node->name));
		FUNC2(node->first == node);

		/* Get the corresponding directory node in the parent. */
		node = mtree_current->parent;

		FUNC2(node != NULL);
		FUNC2(!FUNC0(node->name));

		node = node->first;

		FUNC2(node != NULL);
		FUNC2(FUNC0(node->name));
		FUNC2(node->first == node);

		mtree_current = node;
		return (0);
	}

	/*
	 * If we don't have a current directory and the first specification
	 * (either implicit or defined) is not '.', then we need to create
	 * a '.' node first (using a recursive call).
	 */
	if (!FUNC0(name) && mtree_current == NULL) {
		error = FUNC9(fp, false, ".");
		if (error)
			return (error);
	}

	/*
	 * Lookup the name in the current directory (if we have a current
	 * directory) to make sure we do not create multiple nodes for the
	 * same component. For non-definitions, if we find a node with the
	 * same name, simply change the current directory. For definitions
	 * more happens.
	 */
	last = NULL;
	node = mtree_current;
	while (node != NULL) {
		FUNC2(node->first == mtree_current);

		if (FUNC8(name, node->name) == 0) {
			if (def == true) {
				if (!dupsok)
					FUNC5(
					    "duplicate definition of %s",
					    name);
				else
					FUNC6(
					    "duplicate definition of %s",
					    name);
				return (0);
			}

			if (node->type != S_IFDIR) {
				FUNC5("%s is not a directory", name);
				return (0);
			}

			FUNC2(!FUNC0(name));

			node = node->child;

			FUNC2(node != NULL);
			FUNC2(FUNC0(node->name));

			mtree_current = node;
			return (0);
		}

		last = node;
		node = last->next;
	}

	parent = (mtree_current != NULL) ? mtree_current->parent : NULL;
	type = (def == false || FUNC0(name)) ? S_IFDIR : 0;
	node = FUNC3(name, type, parent, &mtree_global);
	if (node == NULL)
		return (ENOMEM);

	if (def == true) {
		error = FUNC7(fp, node);
		if (error) {
			FUNC4(node);
			return (error);
		}
	}

	node->first = (mtree_current != NULL) ? mtree_current : node;

	if (last != NULL)
		last->next = node;

	if (node->type != S_IFDIR)
		return (0);

	if (!FUNC0(node->name)) {
		parent = node;
		node = FUNC3(".", S_IFDIR, parent, parent);
		if (node == NULL) {
			last->next = NULL;
			FUNC4(parent);
			return (ENOMEM);
		}
		parent->child = node;
		node->first = node;
	}

	FUNC2(node != NULL);
	FUNC2(FUNC0(node->name));
	FUNC2(node->first == node);

	mtree_current = node;
	if (mtree_root == NULL)
		mtree_root = node;

	return (0);
}