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
typedef  enum trace_state { ____Placeholder_trace_state } trace_state ;

/* Variables and functions */
 int TS_FRAMENUM ; 
 int TS_FUNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(const char *old, char *new, int kflag)
{
	enum trace_state old_ts, ts;
	const char *cp_old;
	char *cp_new, *cp_loop, *cp_tofree, *cp_line;

	ts = TS_FRAMENUM;
	if (kflag == 1) {
		for (cp_old = old, cp_new = new; *cp_old != '\0'; cp_old++) {
			switch (*cp_old) {
			case '\n':
				*cp_new = *cp_old;
				cp_new++;
			case ' ':
			case '+':
				old_ts = ts;
				ts = FUNC1(old_ts);
				continue;
			}
			if (ts == TS_FUNC) {
				*cp_new = *cp_old;
				cp_new++;
			}
		}
		*cp_new = '\0';
		cp_tofree = cp_loop = FUNC2(new);
	} else
		cp_tofree = cp_loop = FUNC2(old);
        while ((cp_line = FUNC4(&cp_loop, "\n")) != NULL) {
		if (FUNC3(cp_line) != 0 && *cp_line != 127)
			FUNC5("{le:token/%s}", cp_line);
	}
	FUNC0(cp_tofree);
}