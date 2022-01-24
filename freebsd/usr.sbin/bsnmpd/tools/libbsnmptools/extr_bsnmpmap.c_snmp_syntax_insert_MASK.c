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
struct snmp_idxlist {int dummy; } ;
struct index {int syntax; int tc; struct enum_pairs* snmp_enum; } ;
struct enum_pairs {int dummy; } ;
typedef  int int32_t ;
typedef  enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 struct index* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct index*) ; 
 scalar_t__ FUNC2 (struct snmp_idxlist*,struct index*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int32_t
FUNC5(struct snmp_idxlist *headp, struct enum_pairs *enums,
    enum snmp_syntax syntax, enum snmp_tc tc)
{
	struct index *idx;

	if ((idx = FUNC0(1, sizeof(struct index))) == NULL) {
		FUNC4(LOG_ERR, "malloc() failed: %s", FUNC3(errno));
		return (-1);
	}

	if (FUNC2(headp, idx) < 0) {
		FUNC1(idx);
		return (-1);
	}

	idx->syntax = syntax;
	idx->snmp_enum = enums;
	idx->tc = tc;

	return (1);
}