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
 char* FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ dynamic_kenv ; 
 int /*<<< orphan*/  kenv_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int
FUNC5(const char *name, char *data, int size)
{
	char *cp;

	if (dynamic_kenv) {
		FUNC2(&kenv_lock);
		cp = FUNC0(name, NULL);
		if (cp != NULL)
			FUNC4(data, cp, size);
		FUNC3(&kenv_lock);
	} else {
		cp = FUNC1(name);
		if (cp != NULL)
			FUNC4(data, cp, size);
	}
	return (cp != NULL);
}