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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char comment_line_char ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char const) ; 

__attribute__((used)) static void FUNC4(const struct strbuf *sb)
{
	char candidates[] = "#;@!$%^&|:";
	char *candidate;
	const char *p;

	comment_line_char = candidates[0];
	if (!FUNC2(sb->buf, comment_line_char, sb->len))
		return;

	p = sb->buf;
	candidate = FUNC3(candidates, *p);
	if (candidate)
		*candidate = ' ';
	for (p = sb->buf; *p; p++) {
		if ((p[0] == '\n' || p[0] == '\r') && p[1]) {
			candidate = FUNC3(candidates, p[1]);
			if (candidate)
				*candidate = ' ';
		}
	}

	for (p = candidates; *p == ' '; p++)
		;
	if (!*p)
		FUNC1(FUNC0("unable to select a comment character that is not used\n"
		      "in the current commit message"));
	comment_line_char = *p;
}