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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void
FUNC5(char *line, nvlist_t *nvl)
{
	char result[BUFSIZ], *s;

	if (FUNC3(line, result)) {
		s = FUNC4(result, '=');
		*s = '\0';
		if (FUNC1(nvl, result))
			FUNC2(nvl, result);
		FUNC0(nvl, result, s + 1);
	}
}