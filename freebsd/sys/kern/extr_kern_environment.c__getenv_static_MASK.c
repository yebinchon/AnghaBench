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
 char* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  kern_envp ; 
 int /*<<< orphan*/  md_envp ; 

__attribute__((used)) static char *
FUNC1(const char *name)
{
	char *val;

	val = FUNC0(md_envp, name);
	if (val != NULL)
		return (val);
	val = FUNC0(kern_envp, name);
	if (val != NULL)
		return (val);
	return (NULL);
}