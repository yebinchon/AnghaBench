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
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(const char *s, FILE *f)
{
	if (s && FUNC4(s, f) == EOF) {
		(void) FUNC2(f);
		(void) FUNC6(FUNC0());
		FUNC1("%s", FUNC5(errno));
		return (EOF);
	}
	if (FUNC3('\n', f) == EOF) {
		(void) FUNC2(f);
		(void) FUNC6(FUNC0());
		FUNC1("%s", FUNC5(errno));
		return (EOF);
	}
	return (0);
}