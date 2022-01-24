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
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ u_char ;
struct snmp_toolinfo {int dummy; } ;
struct asn_oid {size_t* subs; } ;
typedef  enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_toolinfo*,int,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct snmp_toolinfo *snmptoolctx, enum snmp_tc tc,
    struct asn_oid *oid)
{
	uint32_t i;
	uint8_t *s;

	if ((s = FUNC1(oid->subs[0] + 1)) == NULL)
		FUNC4(LOG_ERR, "malloc failed - %s", FUNC3(errno));
	else {
		for (i = 0; i < oid->subs[0]; i++)
			s[i] = (u_char) (oid->subs[i + 1]);

		FUNC2(snmptoolctx, tc, oid->subs[0], s);
		FUNC0(s);
	}
}