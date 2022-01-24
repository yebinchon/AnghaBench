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
 int FUNC0 (int*,struct mac_bsdextended_rule*,int,char*) ; 
 int FUNC1 (int,char**,struct mac_bsdextended_rule*,int,char*) ; 
 int FUNC2 (struct mac_bsdextended_rule*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(int argc, char *argv[])
{
	char errstr[BUFSIZ], charstr[BUFSIZ];
	struct mac_bsdextended_rule rule;
	int error, rulenum;

	error = FUNC1(argc, argv, &rule, BUFSIZ, errstr);
	if (error) {
		FUNC4("%s", errstr);
		return;
	}

	error = FUNC0(&rulenum, &rule, BUFSIZ, errstr);
	if (error) {
		FUNC4("%s", errstr);
		return;
	}
	if (FUNC2(&rule, charstr, BUFSIZ) == -1)
		FUNC4("Added rule, but unable to print string.");
	else
		FUNC3("%d %s\n", rulenum, charstr);
}