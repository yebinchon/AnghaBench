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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char** l_keywds ; 

__attribute__((used)) static int
FUNC2(register char *s)
{
	register char **ss = l_keywds;
	register int i = 1;
	register char *cp = s;

	while (++cp, FUNC1(*cp))
		i++;
	while ((cp = *ss++))
		if (!FUNC0(s,cp,i) && !FUNC1(cp[i]))
			return (i);
	return (0);
}