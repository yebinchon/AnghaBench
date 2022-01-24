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
typedef  int /*<<< orphan*/  pathtmp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int PATH_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  mtree_current ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  mtree_root ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*) ; 
 int FUNC10 (char*,int,char*) ; 

__attribute__((used)) static int
FUNC11(FILE *fp)
{
	char pathspec[PATH_MAX], pathtmp[4*PATH_MAX + 1];
	char *cp;
	int error;

	error = FUNC6(fp, pathtmp, sizeof(pathtmp));
	if (error)
		goto out;
	if (FUNC10(pathspec, PATH_MAX, pathtmp) == -1) {
		error = errno;
		goto out;
	}
	error = 0;

	cp = FUNC8(pathspec, '/');
	if (cp != NULL) {
		/* Absolute pathname */
		mtree_current = mtree_root;

		do {
			*cp++ = '\0';

			/* Disallow '..' as a component. */
			if (FUNC1(pathspec)) {
				FUNC4("absolute path cannot contain "
				    ".. component");
				goto out;
			}

			/* Ignore multiple adjacent slashes and '.'. */
			if (pathspec[0] != '\0' && !FUNC0(pathspec))
				error = FUNC5(fp, false, pathspec);
			FUNC3(pathspec, cp, FUNC9(cp) + 1);
			cp = FUNC8(pathspec, '/');
		} while (!error && cp != NULL);

		/* Disallow '.' and '..' as the last component. */
		if (!error && (FUNC0(pathspec) || FUNC1(pathspec))) {
			FUNC4("absolute path cannot contain . or .. "
			    "components");
			goto out;
		}
	}

	/* Ignore absolute specfications that end with a slash. */
	if (!error && pathspec[0] != '\0')
		error = FUNC5(fp, true, pathspec);

 out:
	FUNC7(fp, "\n");
	(void)FUNC2(fp);
	return (error);
}