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
 int BUFSIZ ; 
 int FUNC0 (int,int,char*) ; 
 long FUNC1 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void
FUNC4(int argc, char *argv[])
{
	char errstr[BUFSIZ];
	long value;
	int error, rulenum;
	char *endp;

	if (argc != 1)
		FUNC2();

	value = FUNC1(argv[0], &endp, 10);
	if (*endp != '\0')  
		FUNC2();

	if ((long) value != (int) value || value < 0)
		FUNC2();

	rulenum = value;

	error = FUNC0(rulenum, BUFSIZ, errstr);
	if (error)
		FUNC3("%s", errstr);
}