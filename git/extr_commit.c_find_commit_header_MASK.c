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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

const char *FUNC3(const char *msg, const char *key, size_t *out_len)
{
	int key_len = FUNC1(key);
	const char *line = msg;

	while (line) {
		const char *eol = FUNC0(line, '\n');

		if (line == eol)
			return NULL;

		if (eol - line > key_len &&
		    !FUNC2(line, key, key_len) &&
		    line[key_len] == ' ') {
			*out_len = eol - line - key_len - 1;
			return line + key_len + 1;
		}
		line = *eol ? eol + 1 : NULL;
	}
	return NULL;
}