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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  DISTINF 129 
#define  DISTMD5 128 
 int EOF ; 
 int /*<<< orphan*/  E_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 

__attribute__((used)) static int
FUNC13(const char *path, int type)
{
    FILE *fp;
    int rval, c;

    if (FUNC9(path)) {
	path = "(stdin)";
	fp = stdin;
    } else if ((fp = FUNC8(path, "r")) == NULL)
	return FUNC4(path, NULL);
    if (!type) {
	if (fp != stdin)
	    type = FUNC2(path);
	if (!type)
	    if ((c = FUNC7(fp)) != EOF) {
		type = c == 'M' ? DISTMD5 : c == 'P' ? DISTINF : 0;
		(void)FUNC11(c, fp);
	    }
    }
    switch (type) {
    case DISTMD5:
	rval = FUNC1(fp, path);
	break;
    case DISTINF:
	rval = FUNC0(fp, path);
	break;
    default:
	rval = FUNC10(path, NULL, E_UNKNOWN);
    }
    if (FUNC6(fp))
	FUNC12("%s", path);
    if (fp != stdin && FUNC5(fp))
	FUNC3(2, "%s", path);
    return rval;
}