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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  fname ; 
 int FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  linenum ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static char *
FUNC5(char *s, const char *ctype)
{
	size_t len;
	int ws;
	char *p, *start;

	ws = 0;
	for (start = s; *s != '\0' && *s != '\n'; ++s)
		ws = FUNC1((unsigned char)*s);
	*s = '\0';
	if (ws)
		FUNC4("%lu: %s: whitespace after %s", linenum, fname, ctype);
	len = s - start + 1;
	if ((p = FUNC2(len)) == NULL)
		FUNC0(1, "malloc");
	return (FUNC3(p, start, len));
}