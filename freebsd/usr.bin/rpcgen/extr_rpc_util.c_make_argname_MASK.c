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
 char* ARGEXT ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char const*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (scalar_t__) ; 

char *
FUNC4(const char *pname, const char *vname)
{
	char *name;

	name = FUNC3(FUNC2(pname) + FUNC2(vname) + FUNC2(ARGEXT) + 3);
	FUNC1(name, "%s_%s_%s", FUNC0(pname), vname, ARGEXT);
	return (name);
}