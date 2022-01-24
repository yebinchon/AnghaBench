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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(char **hoststart, int removebrackets)
{
	char *host = *hoststart;
	char *end;
	char *start = FUNC2(host, "@[");
	if (start)
		start++; /* Jump over '@' */
	else
		start = host;
	if (start[0] == '[') {
		end = FUNC1(start + 1, ']');
		if (end) {
			if (removebrackets) {
				*end = 0;
				FUNC0(start, start + 1, end - start);
				end++;
			}
		} else
			end = host;
	} else
		end = host;
	return end;
}