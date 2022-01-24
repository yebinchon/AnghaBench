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
struct cmd {char* c_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 

int
FUNC2(void)
{
	extern const struct cmd cmdtab[];
	const struct cmd *cp;
	int cc;

	FUNC0("Commands are:\n");
	for (cc = 0, cp = cmdtab; cp->c_name != NULL; cp++) {
		cc += FUNC1(cp->c_name) + 2;
		if (cc > 72) {
			FUNC0("\n");
			cc = FUNC1(cp->c_name) + 2;
		}
		if ((cp+1)->c_name != NULL)
			FUNC0("%s, ", cp->c_name);
		else
			FUNC0("%s\n", cp->c_name);
	}
	return (0);
}