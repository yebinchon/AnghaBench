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
 int /*<<< orphan*/  M_LINKER ; 
 char* FUNC0 (char*,int,char const*,int,int /*<<< orphan*/ *) ; 
 char* linker_path ; 
 scalar_t__ FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *name)
{
	char *cp, *ep, *result;
	int len;

	/* qualified at all? */
	if (FUNC1(name, '/'))
		return (FUNC2(name, M_LINKER));

	/* traverse the linker path */
	len = FUNC3(name);
	for (ep = linker_path; *ep; ep++) {
		cp = ep;
		/* find the end of this component */
		for (; *ep != 0 && *ep != ';'; ep++);
		result = FUNC0(cp, ep - cp, name, len, NULL);
		if (result != NULL)
			return (result);
	}
	return (NULL);
}