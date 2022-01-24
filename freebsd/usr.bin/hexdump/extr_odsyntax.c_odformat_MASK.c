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
 int /*<<< orphan*/  FUNC0 (int,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char,char const*) ; 
 char* FUNC3 (char,char const*) ; 

__attribute__((used)) static void
FUNC4(const char *fmt)
{
	char fchar;

	while (*fmt != '\0') {
		switch ((fchar = *fmt++)) {
		case 'a':
			FUNC1("16/1 \"%3_u \" \"\\n\"");
			break;
		case 'c':
			FUNC1("16/1 \"%3_c \" \"\\n\"");
			break;
		case 'o': case 'u': case 'd': case 'x':
			fmt = FUNC3(fchar, fmt);
			break;
		case 'f':
			fmt = FUNC2(fchar, fmt);
			break;
		default:
			FUNC0(1, "%c: unrecognised format character", fchar);
		}
	}
}