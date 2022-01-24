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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC3(const char *bp)
{
	char *retval;	
	const char *nameend;

	nameend = FUNC2(bp, "|:");
	if (nameend == NULL)
		nameend = bp + 1;
	if ((retval = FUNC0(nameend - bp + 1)) != NULL) {
		retval[0] = '\0';
		FUNC1(retval, bp, nameend - bp);
	}
	return retval;
}