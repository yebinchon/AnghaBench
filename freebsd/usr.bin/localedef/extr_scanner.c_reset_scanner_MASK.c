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
 char com_char ; 
 char esc_char ; 
 scalar_t__ escaped ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char const* filename ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * input ; 
 scalar_t__ instring ; 
 int is_stdin ; 
 int lineno ; 
 int nextline ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ tokidx ; 
 scalar_t__ wideidx ; 

void
FUNC4(const char *fname)
{
	if (fname == NULL) {
		filename = "<stdin>";
		is_stdin = 1;
	} else {
		if (!is_stdin)
			(void) FUNC1(input);
		if ((input = FUNC2(fname, "r")) == NULL) {
			FUNC3("fopen");
			FUNC0(4);
		} else {
			is_stdin = 0;
		}
		filename = fname;
	}
	com_char = '#';
	esc_char = '\\';
	instring = 0;
	escaped = 0;
	lineno = 1;
	nextline = 1;
	tokidx = 0;
	wideidx = 0;
}