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
struct snmp_pdu {int error_index; size_t error_status; TYPE_1__* bindings; scalar_t__ nbindings; } ;
struct snmp_object {int dummy; } ;
typedef  int int32_t ;
struct TYPE_6__ {char* str; } ;
struct TYPE_5__ {char* chost; char* cport; } ;
struct TYPE_4__ {int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int ASN_OIDSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (struct snmp_toolinfo*) ; 
 size_t SNMP_ERR_INCONS_NAME ; 
 size_t SNMP_ERR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct snmp_object* FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_3__* error_strings ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_object*) ; 
 TYPE_2__ snmp_client ; 
 scalar_t__ FUNC5 (struct snmp_toolinfo*,struct snmp_object*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_toolinfo*,struct snmp_object*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct snmp_toolinfo *snmptoolctx, struct snmp_pdu *pdu)
{
	struct snmp_object *object;
	char buf[ASN_OIDSTRLEN];

	if (pdu == NULL || (pdu->error_index > (int32_t) pdu->nbindings)) {
		FUNC3(stdout, "Invalid error index in PDU\n");
		return;
	}

	if ((object = FUNC2(1, sizeof(struct snmp_object))) == NULL) {
		FUNC3(stdout, "calloc: %s", FUNC7(errno));
		return;
	}

	FUNC3(stdout, "Agent %s:%s returned error \n", snmp_client.chost,
	    snmp_client.cport);

	if (!FUNC0(snmptoolctx) && (FUNC5(snmptoolctx, object,
	    &(pdu->bindings[pdu->error_index - 1])) > 0))
		FUNC6(snmptoolctx, object);
	else {
		FUNC1(&(pdu->bindings[pdu->error_index - 1].var), buf);
		FUNC3(stdout,"%s", buf);
	}

	FUNC3(stdout," caused error - ");
	if ((pdu->error_status > 0) && (pdu->error_status <=
	    SNMP_ERR_INCONS_NAME))
		FUNC3(stdout, "%s\n", error_strings[pdu->error_status].str);
	else
		FUNC3(stdout,"%s\n", error_strings[SNMP_ERR_UNKNOWN].str);

	FUNC4(object);
	object = NULL;
}