#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct snmp_toolinfo {int dummy; } ;
typedef  enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {char* str; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 scalar_t__ OUTPUT_VERBOSE ; 
 size_t SNMP_SYNTAX_OCTETSTRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,scalar_t__,char*) ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_1__* syntax_strings ; 

__attribute__((used)) static void
FUNC4(struct snmp_toolinfo *snmptoolctx, enum snmp_tc tc,
    uint32_t len, uint8_t *octets)
{
	char *buf;

	if (len == 0 || octets == NULL)
		return;

	if (FUNC0(snmptoolctx) == OUTPUT_VERBOSE)
		FUNC1(stdout, "%s : ",
		    syntax_strings[SNMP_SYNTAX_OCTETSTRING].str);

	if ((buf = FUNC3(tc, len, (char *) octets)) != NULL) {
		FUNC1(stdout, "%s", buf);
		FUNC2(buf);
	}
}