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
struct snmp_toolinfo {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  OUTPUT_QUIET ; 
 int /*<<< orphan*/  OUTPUT_SHORT ; 
 int /*<<< orphan*/  OUTPUT_TABULAR ; 
 int /*<<< orphan*/  OUTPUT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int32_t
FUNC5(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
	FUNC1(opt_arg != NULL);

	if (FUNC2(opt_arg) > FUNC2("verbose")) {
		FUNC4( "Invalid output option - %s",opt_arg);
		return (-1);
	}

	if (FUNC3(opt_arg, "short", FUNC2(opt_arg)) == 0)
		FUNC0(snmptoolctx, OUTPUT_SHORT);
	else if (FUNC3(opt_arg, "verbose", FUNC2(opt_arg)) == 0)
		FUNC0(snmptoolctx, OUTPUT_VERBOSE);
	else if (FUNC3(opt_arg,"tabular", FUNC2(opt_arg)) == 0)
		FUNC0(snmptoolctx, OUTPUT_TABULAR);
	else if (FUNC3(opt_arg, "quiet", FUNC2(opt_arg)) == 0)
		FUNC0(snmptoolctx, OUTPUT_QUIET);
	else {
		FUNC4( "Invalid output option - %s", opt_arg);
		return (-1);
	}

	return (2);
}