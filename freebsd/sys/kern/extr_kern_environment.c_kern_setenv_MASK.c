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
 int KENV_MNAMELEN ; 
 int KENV_MVALLEN ; 
 int KENV_SIZE ; 
 int /*<<< orphan*/  M_KENV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 char* FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  dynamic_kenv ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kenv_lock ; 
 char** kenvp ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ md_env_len ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char const*) ; 
 int FUNC7 (char const*) ; 

int
FUNC8(const char *name, const char *value)
{
	char *buf, *cp, *oldenv;
	int namelen, vallen, i;

	if (!dynamic_kenv && md_env_len > 0)
		return (FUNC5(name, value));

	KENV_CHECK;

	namelen = FUNC7(name) + 1;
	if (namelen > KENV_MNAMELEN + 1)
		return (-1);
	vallen = FUNC7(value) + 1;
	if (vallen > KENV_MVALLEN + 1)
		return (-1);
	buf = FUNC2(namelen + vallen, M_KENV, M_WAITOK);
	FUNC6(buf, "%s=%s", name, value);

	FUNC3(&kenv_lock);
	cp = FUNC0(name, &i);
	if (cp != NULL) {
		oldenv = kenvp[i];
		kenvp[i] = buf;
		FUNC4(&kenv_lock);
		FUNC1(oldenv, M_KENV);
	} else {
		/* We add the option if it wasn't found */
		for (i = 0; (cp = kenvp[i]) != NULL; i++)
			;

		/* Bounds checking */
		if (i < 0 || i >= KENV_SIZE) {
			FUNC1(buf, M_KENV);
			FUNC4(&kenv_lock);
			return (-1);
		}

		kenvp[i] = buf;
		kenvp[i + 1] = NULL;
		FUNC4(&kenv_lock);
	}
	return (0);
}