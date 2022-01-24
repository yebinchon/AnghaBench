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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *bad, const char *good)
{
	FILE *fp = NULL;
	int res;

	if (!FUNC8(bad, good))
		return FUNC2(FUNC0("please use two different terms"));

	if (FUNC1(bad, "bad") || FUNC1(good, "good"))
		return -1;

	fp = FUNC5(FUNC7(), "w");
	if (!fp)
		return FUNC3(FUNC0("could not open the file BISECT_TERMS"));

	res = FUNC6(fp, "%s\n%s\n", bad, good);
	res |= FUNC4(fp);
	return (res < 0) ? -1 : 0;
}