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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char,int) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 char* FUNC5 (char const*,int) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,int,char const*) ; 

__attribute__((used)) static char *FUNC9(struct strbuf *root,
			      const char *line,
			      const char *def,
			      int p_value,
			      const char *end,
			      int terminate)
{
	int len;
	const char *start = NULL;

	if (p_value == 0)
		start = line;
	while (line != end) {
		char c = *line;

		if (!end && FUNC0(c)) {
			if (c == '\n')
				break;
			if (FUNC1(c, terminate))
				break;
		}
		line++;
		if (c == '/' && !--p_value)
			start = line;
	}
	if (!start)
		return FUNC2(FUNC7(def));
	len = line - start;
	if (!len)
		return FUNC2(FUNC7(def));

	/*
	 * Generally we prefer the shorter name, especially
	 * if the other one is just a variation of that with
	 * something else tacked on to the end (ie "file.orig"
	 * or "file~").
	 */
	if (def) {
		int deflen = FUNC3(def);
		if (deflen < len && !FUNC4(start, def, deflen))
			return FUNC2(FUNC6(def));
	}

	if (root->len) {
		char *ret = FUNC8("%s%.*s", root->buf, len, start);
		return FUNC2(ret);
	}

	return FUNC2(FUNC5(start, len));
}