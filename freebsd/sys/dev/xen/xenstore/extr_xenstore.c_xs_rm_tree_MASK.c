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
typedef  size_t u_int ;
struct xs_transaction {scalar_t__ id; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (struct xs_transaction,char*,char*,size_t*,char const***) ; 
 struct sbuf* FUNC7 (char const*,char const*) ; 
 int FUNC8 (struct xs_transaction,char*,char const*) ; 
 int FUNC9 (struct xs_transaction,int) ; 
 int FUNC10 (struct xs_transaction*) ; 

int
FUNC11(struct xs_transaction xbt, const char *base, const char *node)
{
	struct xs_transaction local_xbt;
	struct sbuf *root_path_sbuf;
	struct sbuf *cur_path_sbuf;
	char *root_path;
	char *cur_path;
	const char **dir;
	int error;

retry:
	root_path_sbuf = FUNC7(base, node);
	cur_path_sbuf  = FUNC7(base, node);
	root_path      = FUNC2(root_path_sbuf);
	cur_path       = FUNC2(cur_path_sbuf);
	dir            = NULL;
	local_xbt.id   = 0;

	if (xbt.id == 0) {
		error = FUNC10(&local_xbt);
		if (error != 0)
			goto out;
		xbt = local_xbt;
	}

	while (1) {
		u_int count;
		u_int i;

		error = FUNC6(xbt, cur_path, "", &count, &dir);
		if (error)
			goto out;

		for (i = 0; i < count; i++) {
			error = FUNC8(xbt, cur_path, dir[i]);
			if (error == ENOTEMPTY) {
				struct sbuf *push_dir;

				/*
				 * Descend to clear out this sub directory.
				 * We'll return to cur_dir once push_dir
				 * is empty.
				 */
				push_dir = FUNC7(cur_path, dir[i]);
				FUNC3(cur_path_sbuf);
				cur_path_sbuf = push_dir;
				cur_path = FUNC2(cur_path_sbuf);
				break;
			} else if (error != 0) {
				goto out;
			}
		}

		FUNC1(dir, M_XENSTORE);
		dir = NULL;

		if (i == count) {
			char *last_slash;

			/* Directory is empty.  It is now safe to remove. */
			error = FUNC8(xbt, cur_path, "");
			if (error != 0)
				goto out;

			if (!FUNC4(cur_path, root_path))
				break;

			/* Return to processing the parent directory. */
			last_slash = FUNC5(cur_path, '/');
			FUNC0(last_slash != NULL,
				("xs_rm_tree: mangled path %s", cur_path));
			*last_slash = '\0';
		}
	}

out:
	FUNC3(cur_path_sbuf);
	FUNC3(root_path_sbuf);
	if (dir != NULL)
		FUNC1(dir, M_XENSTORE);

	if (local_xbt.id != 0) {
		int terror;

		terror = FUNC9(local_xbt, /*abort*/error != 0);
		xbt.id = 0;
		if (terror == EAGAIN && error == 0)
			goto retry;
	}
	return (error);
}