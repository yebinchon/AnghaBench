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
 int MAX_MARGV ; 
 scalar_t__ FUNC0 (char) ; 
 int margc ; 
 char** margv ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static void
FUNC2(char *line)
{
	char *cp;
	char **argp = margv;

	margc = 0;
	if ((cp = FUNC1(line, '\n')) != NULL)
		*cp = '\0';
	for (cp = line; margc < MAX_MARGV - 1 && *cp != '\0';) {
		while (FUNC0(*cp))
			cp++;
		if (*cp == '\0')
			break;
		*argp++ = cp;
		margc += 1;
		while (*cp != '\0' && !FUNC0(*cp))
			cp++;
		if (*cp == '\0')
			break;
		*cp++ = '\0';
	}
	*argp++ = 0;
}