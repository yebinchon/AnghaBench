#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snmp_toolinfo {int /*<<< orphan*/  snmp_objectlist; } ;
struct TYPE_4__ {struct snmp_object* octets; } ;
struct TYPE_5__ {TYPE_1__ octetstring; } ;
struct TYPE_6__ {scalar_t__ syntax; TYPE_2__ v; } ;
struct snmp_object {TYPE_3__ val; } ;

/* Variables and functions */
 struct snmp_object* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SNMP_SYNTAX_OCTETSTRING ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_object*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC3(struct snmp_toolinfo *snmptoolctx)
{
	struct snmp_object *o;

	while ((o = FUNC0(&snmptoolctx->snmp_objectlist)) != NULL) {
		FUNC1(&snmptoolctx->snmp_objectlist, link);

		if (o->val.syntax == SNMP_SYNTAX_OCTETSTRING &&
		    o->val.v.octetstring.octets != NULL)
			FUNC2(o->val.v.octetstring.octets);
		FUNC2(o);
	}
}