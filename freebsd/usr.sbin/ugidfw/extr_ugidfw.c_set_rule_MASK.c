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
 int FUNC0 (int,char**,struct mac_bsdextended_rule*,int,char*) ; 
 int FUNC1 (int,struct mac_bsdextended_rule*,int,char*) ; 
 long FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void
FUNC5(int argc, char *argv[])
{
	char errstr[BUFSIZ];
	struct mac_bsdextended_rule rule;
	long value;
	int error, rulenum;
	char *endp;

	if (argc < 1)
		FUNC3();

	value = FUNC2(argv[0], &endp, 10);
	if (*endp != '\0')
		FUNC3();

	if ((long) value != (int) value || value < 0)
		FUNC3();

	rulenum = value;

	error = FUNC0(argc - 1, argv + 1, &rule, BUFSIZ, errstr);
	if (error) {
		FUNC4("%s", errstr);
		return;
	}

	error = FUNC1(rulenum, &rule, BUFSIZ, errstr);
	if (error) {
		FUNC4("%s", errstr);
		return;
	}
}