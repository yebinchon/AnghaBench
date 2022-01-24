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
typedef  int /*<<< orphan*/  ubig ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ubig
FUNC7(void)
{
	ubig val;
	char *p, buf[LINE_MAX];		/* > max number of digits. */

	for (;;) {
		if (FUNC4(buf, sizeof(buf), stdin) == NULL) {
			if (FUNC3(stdin))
				FUNC0(1, "stdin");
			FUNC2(0);
		}
		for (p = buf; FUNC5(*p); ++p);
		if (*p == '\n' || *p == '\0')
			continue;
		if (*p == '-')
			FUNC1(1, "negative numbers aren't permitted.");
		errno = 0;
		val = FUNC6(buf, &p, 0);
		if (errno)
			FUNC0(1, "%s", buf);
		if (*p != '\n')
			FUNC1(1, "%s: illegal numeric format.", buf);
		return (val);
	}
}