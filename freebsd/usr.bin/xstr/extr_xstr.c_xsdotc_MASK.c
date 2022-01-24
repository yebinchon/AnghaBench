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
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* strings ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	FILE *strf = FUNC4(strings, "r");
	FILE *xdotcf;

	if (strf == NULL)
		FUNC0(5, "%s", strings);
	xdotcf = FUNC4("xs.c", "w");
	if (xdotcf == NULL)
		FUNC0(6, "xs.c");
	FUNC5(xdotcf, "char\txstr[] = {\n");
	for (;;) {
		int i, c;

		for (i = 0; i < 8; i++) {
			c = FUNC6(strf);
			if (FUNC3(strf)) {
				FUNC9("%s", strings);
				FUNC8(0);
			}
			if (FUNC2(strf)) {
				FUNC5(xdotcf, "\n");
				goto out;
			}
			FUNC5(xdotcf, "0x%02x,", c);
		}
		FUNC5(xdotcf, "\n");
	}
out:
	FUNC5(xdotcf, "};\n");
	FUNC7(FUNC1(xdotcf));
	FUNC7(FUNC1(strf));
}