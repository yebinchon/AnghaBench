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
struct snmp_toolinfo {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  var; } ;
struct snmp_object {TYPE_2__* info; TYPE_1__ val; } ;
struct asn_oid {int dummy; } ;
struct TYPE_6__ {char* str; } ;
struct TYPE_5__ {char* string; } ;

/* Variables and functions */
 int ASN_OIDSTRLEN ; 
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 scalar_t__ OUTPUT_VERBOSE ; 
 size_t SNMP_SYNTAX_OID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct asn_oid*) ; 
 int /*<<< orphan*/  FUNC3 (struct asn_oid*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_object*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct snmp_toolinfo*,struct snmp_object*) ; 
 scalar_t__ FUNC7 (struct snmp_toolinfo*,struct snmp_object*) ; 
 scalar_t__ FUNC8 (struct snmp_toolinfo*,struct snmp_object*) ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_3__* syntax_strings ; 

__attribute__((used)) static void
FUNC9(struct snmp_toolinfo *snmptoolctx, struct asn_oid *oid)
{
	char oid_string[ASN_OIDSTRLEN];
	struct snmp_object obj;

	if (FUNC0(snmptoolctx) == OUTPUT_VERBOSE)
		FUNC4(stdout, "%s : ", syntax_strings[SNMP_SYNTAX_OID].str);

	if(!FUNC1(snmptoolctx)) {
		FUNC5(&obj, 0, sizeof(struct snmp_object));
		FUNC2(&(obj.val.var), oid);

		if (FUNC6(snmptoolctx, &obj) > 0)
			FUNC4(stdout, "%s" , obj.info->string);
		else if (FUNC8(snmptoolctx, &obj) > 0)
			FUNC4(stdout, "%s" , obj.info->string);
		else if (FUNC7(snmptoolctx, &obj) > 0)
			FUNC4(stdout, "%s" , obj.info->string);
		else {
			(void) FUNC3(oid, oid_string);
			FUNC4(stdout, "%s", oid_string);
		}
	} else {
		(void) FUNC3(oid, oid_string);
		FUNC4(stdout, "%s", oid_string);
	}
}