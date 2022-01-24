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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,int) ; 

__attribute__((used)) static char *FUNC4(const char *msg, size_t len, const char *key,
			 const char **next_line)
{
	int key_len = FUNC2(key);
	const char *line = msg;

	while (line && line < msg + len) {
		const char *eol = FUNC1(line, '\n');

		if ((msg + len <= eol) || line == eol)
			return NULL;
		if (line + key_len < eol &&
		    !FUNC0(line, key, key_len) && line[key_len] == ' ') {
			int offset = key_len + 1;
			if (next_line)
				*next_line = *eol ? eol + 1 : eol;
			return FUNC3(line + offset, (eol - line) - offset);
		}
		line = *eol ? eol + 1 : NULL;
	}
	return NULL;
}