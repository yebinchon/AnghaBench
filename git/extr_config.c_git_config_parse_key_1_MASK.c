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
 int CONFIG_INVALID_KEY ; 
 int CONFIG_NO_SECTION_OR_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char) ; 
 unsigned char FUNC7 (unsigned char) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const char *key, char **store_key, int *baselen_, int quiet)
{
	int i, dot, baselen;
	const char *last_dot = FUNC6(key, '.');

	/*
	 * Since "key" actually contains the section name and the real
	 * key name separated by a dot, we have to know where the dot is.
	 */

	if (last_dot == NULL || last_dot == key) {
		if (!quiet)
			FUNC2(FUNC1("key does not contain a section: %s"), key);
		return -CONFIG_NO_SECTION_OR_NAME;
	}

	if (!last_dot[1]) {
		if (!quiet)
			FUNC2(FUNC1("key does not contain variable name: %s"), key);
		return -CONFIG_NO_SECTION_OR_NAME;
	}

	baselen = last_dot - key;
	if (baselen_)
		*baselen_ = baselen;

	/*
	 * Validate the key and while at it, lower case it for matching.
	 */
	if (store_key)
		*store_key = FUNC8(FUNC5(key));

	dot = 0;
	for (i = 0; key[i]; i++) {
		unsigned char c = key[i];
		if (c == '.')
			dot = 1;
		/* Leave the extended basename untouched.. */
		if (!dot || i > baselen) {
			if (!FUNC4(c) ||
			    (i == baselen + 1 && !FUNC3(c))) {
				if (!quiet)
					FUNC2(FUNC1("invalid key: %s"), key);
				goto out_free_ret_1;
			}
			c = FUNC7(c);
		} else if (c == '\n') {
			if (!quiet)
				FUNC2(FUNC1("invalid key (newline): %s"), key);
			goto out_free_ret_1;
		}
		if (store_key)
			(*store_key)[i] = c;
	}

	return 0;

out_free_ret_1:
	if (store_key) {
		FUNC0(*store_key);
	}
	return -CONFIG_INVALID_KEY;
}