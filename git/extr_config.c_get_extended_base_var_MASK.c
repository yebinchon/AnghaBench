#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  linenr; scalar_t__ subsection_case_sensitive; } ;

/* Variables and functions */
 TYPE_1__* cf ; 
 char FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int) ; 

__attribute__((used)) static int FUNC3(struct strbuf *name, int c)
{
	cf->subsection_case_sensitive = 0;
	do {
		if (c == '\n')
			goto error_incomplete_line;
		c = FUNC0();
	} while (FUNC1(c));

	/* We require the format to be '[base "extension"]' */
	if (c != '"')
		return -1;
	FUNC2(name, '.');

	for (;;) {
		int c = FUNC0();
		if (c == '\n')
			goto error_incomplete_line;
		if (c == '"')
			break;
		if (c == '\\') {
			c = FUNC0();
			if (c == '\n')
				goto error_incomplete_line;
		}
		FUNC2(name, c);
	}

	/* Final ']' */
	if (FUNC0() != ']')
		return -1;
	return 0;
error_incomplete_line:
	cf->linenr--;
	return -1;
}