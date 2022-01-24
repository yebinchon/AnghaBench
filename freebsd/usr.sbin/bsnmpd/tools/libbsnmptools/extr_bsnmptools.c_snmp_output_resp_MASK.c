#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_pdu {size_t nbindings; TYPE_1__* bindings; } ;
struct snmp_object {int /*<<< orphan*/  info; } ;
struct asn_oid {int dummy; } ;
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int ASN_OIDSTRLEN ; 
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 scalar_t__ OUTPUT_QUIET ; 
 int /*<<< orphan*/  FUNC2 (struct asn_oid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct snmp_object* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_object*) ; 
 scalar_t__ FUNC7 (struct snmp_toolinfo*,struct snmp_object*,TYPE_1__*) ; 
 int FUNC8 (struct snmp_toolinfo*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snmp_toolinfo*,struct snmp_object*) ; 
 int /*<<< orphan*/  stdout ; 

int32_t
FUNC10(struct snmp_toolinfo *snmptoolctx, struct snmp_pdu *pdu,
    struct asn_oid *root)
{
	struct snmp_object *object;
	char p[ASN_OIDSTRLEN];
	int32_t error;
	uint32_t i;

	if ((object = FUNC4(1, sizeof(struct snmp_object))) == NULL)
		return (-1);

	i = error = 0;
	while (i < pdu->nbindings) {
		if (root != NULL && !(FUNC2(root,
		    &(pdu->bindings[i].var))))
			break;

		if (FUNC0(snmptoolctx) != OUTPUT_QUIET) {
			if (!FUNC1(snmptoolctx) &&
			    (FUNC7(snmptoolctx, object,
			    &(pdu->bindings[i])) > 0))
				FUNC9(snmptoolctx, object);
			else {
				FUNC3(&(pdu->bindings[i].var), p);
				FUNC5(stdout, "%s", p);
			}
		}
		error |= FUNC8(snmptoolctx, &(pdu->bindings[i]),
		    object->info);
		i++;
	}

	FUNC6(object);
	object = NULL;

	if (error)
		return (-1);

	return (i);
}