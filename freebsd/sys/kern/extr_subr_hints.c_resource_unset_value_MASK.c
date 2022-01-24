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
typedef  int /*<<< orphan*/  varname ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,char const*,int*,char const*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(const char *name, int unit, const char *resname)
{
	char varname[128];
	const char *retname, *retvalue;
	int error, line;
	size_t len;

	line = 0;
	error = FUNC2(&line, NULL, name, &unit, resname, NULL,
	    &retname, NULL, NULL, NULL, NULL, &retvalue);
	if (error)
		return (error);

	retname -= FUNC3("hint.");
	len = retvalue - retname - 1;
	if (len > sizeof(varname) - 1)
		return (ENAMETOOLONG);
	FUNC1(varname, retname, len);
	varname[len] = '\0';
	return (FUNC0(varname));
}