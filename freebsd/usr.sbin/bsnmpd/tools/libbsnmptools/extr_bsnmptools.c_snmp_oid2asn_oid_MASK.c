#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snmp_toolinfo {int dummy; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_4__ {TYPE_2__ var; } ;
struct snmp_object {TYPE_1__ val; } ;
struct asn_oid {int dummy; } ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  asn_subid_t ;

/* Variables and functions */
 int MAXSTR ; 
 int /*<<< orphan*/  FUNC0 (struct asn_oid*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_object*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct snmp_toolinfo*,struct snmp_object*,char*) ; 
 char* FUNC4 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (struct asn_oid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static char *
FUNC8(struct snmp_toolinfo *snmptoolctx, char *str,
    struct asn_oid *oid)
{
	int32_t i;
	char string[MAXSTR + 1], *endptr;
	struct snmp_object obj;

	for (i = 0; i < MAXSTR; i++)
		if (FUNC1 (*(str + i)) == 0)
			break;

	endptr = str + i;
	FUNC2(&obj, 0, sizeof(struct snmp_object));
	if (i == 0) {
		if ((endptr = FUNC4(str, &(obj.val.var))) == NULL)
			return (NULL);
		if (FUNC5(oid, (asn_subid_t) obj.val.var.len) < 0)
			return (NULL);
	} else {
		FUNC6(string, str, i + 1);
		if (FUNC3(snmptoolctx, &obj, string) < 0) {
			FUNC7("Unknown string - %s", string);
			return (NULL);
		}
	}

	FUNC0(oid, &(obj.val.var));
	return (endptr);
}