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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(char *from, char *to)
{
	FILE *src, *dst;
	int c, res;

	res = FUNC5(from, to);
	if (res == 0)
		return;

	if ((src = FUNC3(from, "r")) == NULL)
		FUNC0(1, "can't fopen %s for reading", from);
	if ((dst = FUNC3(to, "w")) == NULL)
		FUNC0(1, "can't fopen %s for writing", to);

	while ((c = FUNC4(src)) != EOF) {
		if ((FUNC6(c, dst)) == EOF)
			FUNC0(1, "error writing to %s", to);
	}

	if (FUNC2(src))
		FUNC0(1, "error reading from %s", from);
	if ((FUNC1(src)) != 0)
		FUNC0(1, "can't fclose %s", to);
	if ((FUNC1(dst)) != 0)
		FUNC0(1, "can't fclose %s", from);
}