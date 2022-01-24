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

/* Variables and functions */
 int /*<<< orphan*/  _PATH_RWHODIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dirp ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int FUNC4 (void const*,void const*) ; 
 int FUNC5 (void const*,void const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 scalar_t__ optind ; 
 int rflg ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int (*) (void const*,void const*)) ; 
 int FUNC8 (void const*,void const*) ; 
 int FUNC9 (void const*,void const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(int argc, char *argv[])
{
	int (*cmp)(const void *, const void *);
	int aflg, ch;

	aflg = 0;
	cmp = hscmp;
	while ((ch = FUNC3(argc, argv, "alrut")) != -1)
		switch (ch) {
		case 'a':
			aflg = 1;
			break;
		case 'l':
			cmp = lcmp;
			break;
		case 'r':
			rflg = -1;
			break;
		case 't':
			cmp = tcmp;
			break;
		case 'u':
			cmp = ucmp;
			break;
		default:
			FUNC10();
		}
	argc -= optind;
	argv += optind;

	if (FUNC0(_PATH_RWHODIR) || (dirp = FUNC6(".")) == NULL)
		FUNC1(1, "%s", _PATH_RWHODIR);

	FUNC7(*argv, aflg, cmp);
	while (*argv++ != NULL) {
		if (*argv == NULL)
			break;
		FUNC7(*argv, aflg, cmp);
	}
	FUNC2(0);
}