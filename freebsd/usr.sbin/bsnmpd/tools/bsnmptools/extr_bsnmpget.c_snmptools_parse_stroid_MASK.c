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
struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ syntax; int /*<<< orphan*/  var; } ;
struct snmp_object {TYPE_1__ val; } ;
struct asn_oid {scalar_t__ len; } ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 int MAXSTR ; 
 scalar_t__ SNMP_PDU_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct asn_oid*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (struct asn_oid*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct snmp_toolinfo*,struct snmp_object*,char*) ; 
 char* FUNC6 (struct snmp_toolinfo*,char*,struct snmp_object*) ; 
 char* FUNC7 (char*,struct asn_oid*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static char *
FUNC11(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
	char string[MAXSTR], *str;
	int32_t i = 0;
	struct asn_oid in_oid;

	str = argv;

	if (*str == '.')
		str++;

	while (FUNC2(*str) || *str == '_' || (i != 0 && FUNC3(*str))) {
		str++;
		i++;
	}

	if (i <= 0 || i >= MAXSTR)
		return (NULL);

	FUNC4(&in_oid, 0, sizeof(struct asn_oid));
	if ((str = FUNC7((argv + i), &in_oid)) == NULL) {
		FUNC10("Invalid OID - %s", argv);
		return (NULL);
	}

	FUNC9(string, argv, i + 1);
	if (FUNC5(snmptoolctx, obj, string) < 0) {
		FUNC10("No entry for %s in mapping lists", string);
		return (NULL);
	}

	/* If OID given on command line append it. */
	if (in_oid.len > 0)
		FUNC1(&(obj->val.var), &in_oid);
	else if (*str == '[') {
		if ((str = FUNC6(snmptoolctx, str + 1, obj)) == NULL)
			return (NULL);
	} else if (obj->val.syntax > 0 && FUNC0(snmptoolctx) ==
	    SNMP_PDU_GET) {
		if (FUNC8(&(obj->val.var), (asn_subid_t) 0) < 0)
			return (NULL);
	}

	return (str);
}