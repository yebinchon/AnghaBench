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
 int FUNC0 (char**,char*,int,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (char const*) ; 
 char* FUNC9 (char const*,int) ; 

char *
FUNC10(const char *string)
{
	const char *value;
	char c, *expanded, *name;
	int i, ret, before_len = 0, name_off = 0, name_len = 0, after_off = 0;
	bool backslashed = false, bracketed = false;

	expanded = FUNC2(string);

	for (i = 0; string[i] != '\0'; i++) {
		c = string[i];
		if (c == '\\' && backslashed == false) {
			backslashed = true;
			continue;
		}
		if (backslashed) {
			backslashed = false;
			continue;
		}
		backslashed = false;
		if (c != '$')
			continue;

		/*
		 * The 'before_len' variable contains the number
		 * of characters before the '$'.
		 */
		before_len = i;
		FUNC1(i + 1 < (int)FUNC8(string));
		if (string[i + 1] == '{')
			bracketed = true;

		if (string[i + 1] == '\0') {
			FUNC7("truncated variable");
			return (NULL);
		}

		/*
		 * Skip '$'.
		 */
		i++;

		if (bracketed) {
			if (string[i + 1] == '\0') {
				FUNC7("truncated variable");
				return (NULL);
			}

			/*
			 * Skip '{'.
			 */
			i++;
		}

		/*
		 * The 'name_off' variable contains the number
		 * of characters before the variable name,
		 * including the "$" or "${".
		 */
		name_off = i;

		for (; string[i] != '\0'; i++) {
			c = string[i];
			/*
			 * XXX: Decide on the set of characters that can be
			 *	used in a variable name.
			 */
			if (FUNC5(c) || c == '_')
				continue;

			/*
			 * End of variable name.
			 */
			if (bracketed) {
				if (c != '}')
					continue;

				/*
				 * The 'after_off' variable contains the number
				 * of characters before the rest of the string,
				 * i.e. after the variable name.
				 */
				after_off = i + 1;
				FUNC1(i > 1);
				FUNC1(i - 1 > name_off);
				name_len = i - name_off;
				break;
			}

			after_off = i;
			FUNC1(i > 1);
			FUNC1(i > name_off);
			name_len = i - name_off;
			break;
		}

		name = FUNC9(string + name_off, name_len);
		if (name == NULL)
			FUNC6(1, "strndup");
		value = FUNC3(name);
		if (value == NULL) {
			FUNC7("undefined variable ${%s}", name);
			return (NULL);
		}

		/*
		 * Concatenate it back.
		 */
		ret = FUNC0(&expanded, "%.*s%s%s",
		    before_len, string, value, string + after_off);
		if (ret < 0)
			FUNC6(1, "asprintf");

		//log_debugx("\"%s\" expanded to \"%s\"", string, expanded);
		FUNC4(name);

		/*
		 * Figure out where to start searching for next variable.
		 */
		string = expanded;
		i = before_len + FUNC8(value);
		backslashed = bracketed = false;
		before_len = name_off = name_len = after_off = 0;
		FUNC1(i <= (int)FUNC8(string));
	}

	if (before_len != 0 || name_off != 0 || name_len != 0 || after_off != 0) {
		FUNC7("truncated variable");
		return (NULL);
	}

	return (expanded);
}