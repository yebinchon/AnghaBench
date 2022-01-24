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
 int /*<<< orphan*/  FUNC0 (char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 int SPLIT_CMDLINE_BAD_ENDING ; 
 int SPLIT_CMDLINE_UNCLOSED_QUOTE ; 
 scalar_t__ FUNC3 (char) ; 

int FUNC4(char *cmdline, const char ***argv)
{
	int src, dst, count = 0, size = 16;
	char quoted = 0;

	FUNC0(*argv, size);

	/* split alias_string */
	(*argv)[count++] = cmdline;
	for (src = dst = 0; cmdline[src];) {
		char c = cmdline[src];
		if (!quoted && FUNC3(c)) {
			cmdline[dst++] = 0;
			while (cmdline[++src]
					&& FUNC3(cmdline[src]))
				; /* skip */
			FUNC1(*argv, count + 1, size);
			(*argv)[count++] = cmdline + dst;
		} else if (!quoted && (c == '\'' || c == '"')) {
			quoted = c;
			src++;
		} else if (c == quoted) {
			quoted = 0;
			src++;
		} else {
			if (c == '\\' && quoted != '\'') {
				src++;
				c = cmdline[src];
				if (!c) {
					FUNC2(*argv);
					return -SPLIT_CMDLINE_BAD_ENDING;
				}
			}
			cmdline[dst++] = c;
			src++;
		}
	}

	cmdline[dst] = 0;

	if (quoted) {
		FUNC2(*argv);
		return -SPLIT_CMDLINE_UNCLOSED_QUOTE;
	}

	FUNC1(*argv, count + 1, size);
	(*argv)[count] = NULL;

	return count;
}