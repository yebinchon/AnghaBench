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
struct mac_bsdextended_rule {int dummy; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int FUNC0 (int,struct mac_bsdextended_rule*,int,char*) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (struct mac_bsdextended_rule*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7(void)
{
	char errstr[BUFSIZ], charstr[BUFSIZ];
	struct mac_bsdextended_rule rule;
	int error, i, rule_count, rule_slots;

	rule_slots = FUNC2(BUFSIZ, errstr);
	if (rule_slots == -1) {
		FUNC6("unable to get rule slots; mac_bsdextended.ko "
		    "may not be loaded");
		FUNC4(1, "bsde_get_rule_slots: %s", errstr);
	}

	rule_count = FUNC1(BUFSIZ, errstr);
	if (rule_count == -1)
		FUNC4(1, "bsde_get_rule_count: %s", errstr);

	FUNC5("%d slots, %d rules\n", rule_slots, rule_count);

	for (i = 0; i < rule_slots; i++) {
		error = FUNC0(i, &rule, BUFSIZ, errstr);
		switch (error) {
		case -2:
			continue;
		case -1:
			FUNC6("rule %d: %s", i, errstr);
			continue;
		case 0:
			break;
		}

		if (FUNC3(&rule, charstr, BUFSIZ) == -1)
			FUNC6("unable to translate rule %d to string", i);
		else
			FUNC5("%d %s\n", i, charstr);
	}
}