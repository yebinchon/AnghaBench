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
 int FUNC0 (char const*) ; 
 int FUNC1 (char*,char const*,char const*) ; 
 scalar_t__ FUNC2 (unsigned int*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value,
			 const char *key, unsigned int *colopts)
{
	if (!value)
		return FUNC0(var);
	if (FUNC2(colopts, value))
		return FUNC1("invalid column.%s mode %s", key, value);
	return 0;
}