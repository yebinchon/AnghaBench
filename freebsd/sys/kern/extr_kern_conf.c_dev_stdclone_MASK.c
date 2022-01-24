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
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char const*) ; 

int
FUNC3(char *name, char **namep, const char *stem, int *unit)
{
	int u, i;

	i = FUNC2(stem);
	if (FUNC0(stem, name, i) != 0)
		return (0);
	if (!FUNC1(name[i]))
		return (0);
	u = 0;
	if (name[i] == '0' && FUNC1(name[i+1]))
		return (0);
	while (FUNC1(name[i])) {
		u *= 10;
		u += name[i++] - '0';
	}
	if (u > 0xffffff)
		return (0);
	*unit = u;
	if (namep)
		*namep = &name[i];
	if (name[i]) 
		return (2);
	return (1);
}