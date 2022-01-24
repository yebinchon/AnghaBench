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
 int /*<<< orphan*/  KENV_CHECK ; 
 int /*<<< orphan*/  M_KENV ; 
 char* FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kenv_lock ; 
 char** kenvp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(const char *name)
{
	char *cp, *oldenv;
	int i, j;

	KENV_CHECK;

	FUNC3(&kenv_lock);
	cp = FUNC0(name, &i);
	if (cp != NULL) {
		oldenv = kenvp[i];
		for (j = i + 1; kenvp[j] != NULL; j++)
			kenvp[i++] = kenvp[j];
		kenvp[i] = NULL;
		FUNC4(&kenv_lock);
		FUNC1(oldenv, FUNC5(oldenv));
		FUNC2(oldenv, M_KENV);
		return (0);
	}
	FUNC4(&kenv_lock);
	return (-1);
}