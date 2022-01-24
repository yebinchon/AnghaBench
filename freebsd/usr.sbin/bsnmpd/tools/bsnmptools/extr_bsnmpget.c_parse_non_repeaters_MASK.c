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
typedef  scalar_t__ uint32_t ;
struct snmp_toolinfo {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*,scalar_t__) ; 
 scalar_t__ SNMP_MAX_BINDINGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int32_t
FUNC4(struct snmp_toolinfo *snmptoolctx, char *opt_arg)
{
	uint32_t v;

	FUNC1(opt_arg != NULL);

	v = FUNC2(opt_arg, (void *) NULL, 10);

	if (v > SNMP_MAX_BINDINGS) {
		FUNC3("Non repeaters value greater than %d maximum allowed.",
		    SNMP_MAX_BINDINGS);
		return (-1);
	}

	FUNC0(snmptoolctx, v);
	return (2);
}