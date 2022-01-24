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
#define  CC_NONWHITESPACE 129 
#define  CC_WHITESPACE 128 
 int PE_EOF ; 
 int PE_EOL ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (char**) ; 

__attribute__((used)) static int
FUNC2(char **conf, int mc)
{
	int c, match;

	while (1) {
		c = FUNC1(conf);
		if (c == 0)
			return (PE_EOF);
		switch (mc) {
		case CC_WHITESPACE:
			match = (c == ' ' || c == '\t' || c == '\n') ? 1 : 0;
			break;
		case CC_NONWHITESPACE:
			if (c == '\n')
				return (PE_EOL);
			match = (c != ' ' && c != '\t') ? 1 : 0;
			break;
		default:
			match = (c == mc) ? 1 : 0;
			break;
		}
		if (match)
			break;
		FUNC0(conf);
	}
	return (0);
}