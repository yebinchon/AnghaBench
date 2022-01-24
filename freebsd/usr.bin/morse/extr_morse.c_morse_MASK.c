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
struct morsetab {char inchar; char* morse; } ;

/* Variables and functions */
 scalar_t__ device ; 
 struct morsetab* hightab ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ lflag ; 
 struct morsetab* mtab ; 
 scalar_t__ pflag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char c)
{
	const struct morsetab *m;

	if (FUNC0((unsigned char)c))
		c = FUNC4((unsigned char)c);
	if ((c == '\r') || (c == '\n'))
		c = ' ';
	if (c == ' ') {
		if (pflag)
			FUNC1(" ");
		else if (device)
			FUNC5(" ");
		else if (lflag)
			FUNC2("\n");
		else
			FUNC3("");
		return;
	}
	for (m = ((unsigned char)c < 0x80? mtab: hightab);
	     m != NULL && m->inchar != '\0';
	     m++) {
		if (m->inchar == c) {
			if (pflag) {
				FUNC1(m->morse);
			} else if (device) {
				FUNC5(m->morse);
			} else
				FUNC3(m->morse);
		}
	}
}