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
 int /*<<< orphan*/  LS_DIRTY ; 
 int /*<<< orphan*/  linestate ; 
 char* FUNC0 (char const*) ; 

__attribute__((used)) static const char *
FUNC1(const char *cp)
{
	const char *pcp;
	if (*cp != '\0')
		linestate = LS_DIRTY;
	while (*cp != '\0') {
		cp = FUNC0(pcp = cp);
		if (pcp == cp)
			cp++;
	}
	return (cp);
}