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
 int FUNC0 (char*,char const**) ; 
 char* from_host ; 
 int* requ ; 
 size_t requests ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 char** user ; 
 size_t users ; 

int
FUNC2(char *uname, char *cfile)
{
	int *r, jnum;
	char **u;
	const char *cfhost;

	if (users == 0 && requests == 0)
		return(1);
	/*
	 * Check to see if it's in the user list
	 */
	for (u = user; u < &user[users]; u++)
		if (!FUNC1(*u, uname))
			return(1);
	/*
	 * Check the request list
	 */
	jnum = FUNC0(cfile, &cfhost);
	for (r = requ; r < &requ[requests]; r++)
		if (*r == jnum && !FUNC1(cfhost, from_host))
			return(1);
	return(0);
}