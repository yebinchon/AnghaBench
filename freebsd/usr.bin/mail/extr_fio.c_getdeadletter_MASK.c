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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PATHSIZE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 char* FUNC2 (char*) ; 

char *
FUNC3(void)
{
	char *cp;

	if ((cp = FUNC2("DEAD")) == NULL || (cp = FUNC0(cp)) == NULL)
		cp = FUNC0("~/dead.letter");
	else if (*cp != '/') {
		char buf[PATHSIZE];

		(void)FUNC1(buf, sizeof(buf), "~/%s", cp);
		cp = FUNC0(buf);
	}
	return (cp);
}