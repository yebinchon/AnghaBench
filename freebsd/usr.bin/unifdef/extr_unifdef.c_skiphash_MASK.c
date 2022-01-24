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
 scalar_t__ LS_HASH ; 
 scalar_t__ LS_START ; 
 int /*<<< orphan*/  MAXLINE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  input ; 
 int /*<<< orphan*/  linenum ; 
 scalar_t__ linestate ; 
 char const* FUNC3 (char const*) ; 
 char const* FUNC4 (char const*) ; 
 char const* tline ; 

__attribute__((used)) static const char *
FUNC5(void)
{
	const char *cp;

	linenum++;
	if (FUNC2(tline, MAXLINE, input) == NULL) {
		if (FUNC1(input))
			FUNC0(2, "can't read %s", filename);
		else
			return (NULL);
	}
	cp = FUNC3(tline);
	if (linestate == LS_START && *cp == '#') {
		linestate = LS_HASH;
		return (FUNC3(cp + 1));
	} else if (*cp == '\0') {
		return (cp);
	} else {
		return (FUNC4(cp));
	}
}