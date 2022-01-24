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
struct attr_stack {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct attr_stack*,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct attr_stack* FUNC6 (int,int) ; 

__attribute__((used)) static struct attr_stack *FUNC7(const char *path, int macro_ok)
{
	FILE *fp = FUNC2(path, "r");
	struct attr_stack *res;
	char buf[2048];
	int lineno = 0;

	if (!fp)
		return NULL;
	res = FUNC6(1, sizeof(*res));
	while (FUNC1(buf, sizeof(buf), fp)) {
		char *bufp = buf;
		if (!lineno)
			FUNC4(&bufp, FUNC5(bufp));
		FUNC3(res, bufp, path, ++lineno, macro_ok);
	}
	FUNC0(fp);
	return res;
}