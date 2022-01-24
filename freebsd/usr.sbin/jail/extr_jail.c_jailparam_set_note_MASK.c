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
struct jailparam {char* jp_name; int /*<<< orphan*/ * jp_value; } ;
struct cfjail {int dummy; } ;

/* Variables and functions */
 int JAIL_CREATE ; 
 int JAIL_DYING ; 
 int JAIL_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfjail const*,char*,char*,char*) ; 
 char* FUNC3 (struct jailparam*) ; 
 int FUNC4 (struct jailparam*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC9(const struct cfjail *j, struct jailparam *jp, unsigned njp,
    int flags)
{
	char *value;
	int jid;
	unsigned i;

	jid = FUNC4(jp, njp, flags);
	if (verbose > 0) {
		FUNC2(j, "jail_set(%s%s)",
		    (flags & (JAIL_CREATE | JAIL_UPDATE)) == JAIL_CREATE
		    ? "JAIL_CREATE" : "JAIL_UPDATE",
		    (flags & JAIL_DYING) ? " | JAIL_DYING" : "");
		for (i = 0; i < njp; i++) {
			FUNC5(" %s", jp[i].jp_name);
			if (jp[i].jp_value == NULL)
				continue;
			FUNC6('=');
			value = FUNC3(jp + i);
			if (value == NULL)
				FUNC0(1, "jailparam_export");
			FUNC7(stdout, value);
			FUNC1(value);
		}
		if (jid < 0)
			FUNC5(": %s", FUNC8(errno));
		FUNC5("\n");
	}
	return jid;
}