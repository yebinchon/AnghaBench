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
 int /*<<< orphan*/  FUNC0 (char*,char,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int EINVAL ; 
 char* FUNC2 (char const*,char,size_t) ; 

int
FUNC3(const char *env, size_t env_len, char delim,
    const char **name, size_t *name_len, const char **value, size_t *value_len)
{
	const char *p;

	/* Name */
	if ((p = FUNC2(env, delim, env_len)) == NULL) {
		FUNC0("delimiter '%c' not found in '%.*s'\n", delim,
		    FUNC1(env_len), env);
		return (EINVAL);
	}

	/* Name */
	if (name != NULL)
		*name = env;
	if (name_len != NULL)
		*name_len = p - env;

	/* Skip delim */
	p++;

	/* Value */
	if (value != NULL)
		*value = p;
	if (value_len != NULL)
		*value_len = env_len - (p - env);

	return (0);
}