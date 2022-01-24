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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TERM_TAB ; 
 size_t FUNC0 (char const*,size_t) ; 
 char* FUNC1 (struct strbuf*,char const*,char*,int,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct strbuf*,char const*,int) ; 
 char const* FUNC3 (char const*,char) ; 

__attribute__((used)) static char *FUNC4(struct strbuf *root,
				   const char *line,
				   char *def,
				   int p_value)
{
	size_t len;
	size_t date_len;

	if (*line == '"') {
		char *name = FUNC2(root, line, p_value);
		if (name)
			return name;
	}

	len = FUNC3(line, '\n') - line;
	date_len = FUNC0(line, len);
	if (!date_len)
		return FUNC1(root, line, def, p_value, NULL, TERM_TAB);
	len -= date_len;

	return FUNC1(root, line, def, p_value, line + len, 0);
}