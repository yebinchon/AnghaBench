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
 int FUNC0 (char const*,char const*,char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

int FUNC3(const char *var, const char *value,
		      const char *command, unsigned int *colopts)
{
	const char *it;

	if (!FUNC1(var, "column.", &it))
		return 0;

	if (!FUNC2(it, "ui"))
		return FUNC0(var, value, "ui", colopts);

	if (command && !FUNC2(it, command))
		return FUNC0(var, value, it, colopts);

	return 0;
}