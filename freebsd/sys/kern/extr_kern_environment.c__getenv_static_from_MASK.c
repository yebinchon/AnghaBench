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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static char *
FUNC2(char *chkenv, const char *name)
{
	char *cp, *ep;
	int len;

	for (cp = chkenv; cp != NULL; cp = FUNC0(cp)) {
		for (ep = cp; (*ep != '=') && (*ep != 0); ep++)
			;
		if (*ep != '=')
			continue;
		len = ep - cp;
		ep++;
		if (!FUNC1(name, cp, len) && name[len] == 0)
			return (ep);
	}
	return (NULL);
}