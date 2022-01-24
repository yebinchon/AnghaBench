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
typedef  scalar_t__ uid_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

char *
FUNC4(void)
{
	char *np;
	uid_t uid;

	if ((np = FUNC0("USER")) != NULL)
		return (np);
	if ((np = FUNC0("LOGNAME")) != NULL)
		return (np);
	if ((np = FUNC1(uid = FUNC2())) != NULL)
		return (np);
	FUNC3("Cannot associate a name with uid %u\n", (unsigned)uid);
	return (NULL);
}