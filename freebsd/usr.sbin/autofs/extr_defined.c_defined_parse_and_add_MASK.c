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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (char**,char*) ; 

void
FUNC3(char *def)
{
	char *name, *value;

	value = def;
	name = FUNC2(&value, "=");

	if (value == NULL || value[0] == '\0')
		FUNC1(1, "missing variable value");
	if (name == NULL || name[0] == '\0')
		FUNC1(1, "missing variable name");

	FUNC0(name, value);
}